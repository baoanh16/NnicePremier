var del = require('del'),
	gulp = require('gulp'),
	pug = require('gulp-pug'),
	sass = require('gulp-sass'),
	watch = require('gulp-watch'),
	babel = require('gulp-babel'),
	concat = require('gulp-concat'),
	uglify = require('gulp-uglify'),
	plumber = require('gulp-plumber'),
	filesExist = require('files-exist'),
	cleanCSS = require('gulp-clean-css'),
	cssimport = require('gulp-cssimport'),
	runSequence = require('run-sequence'),
	autoPrefixer = require('gulp-autoprefixer'),
	browserSync = require('browser-sync').create(),
	jsVendors = require('./src/vendor/core');


// Noi file css
gulp.task('concat-css', function () {
	return gulp.src('src/vendor/core.sass')
		.pipe(sass().on('error', sass.logError))
		.pipe(cssimport())
		.pipe(cleanCSS())
		.pipe(gulp.dest('./dist/css'))
		.pipe(browserSync.stream());
});

// Noi file JS
gulp.task('concat-js', function (cb) {
	if (jsVendors.length == 0) {
		return cb();
	}
	return gulp.src(filesExist(jsVendors))
		.pipe(concat('core.js'))
		.pipe(uglify())
		.pipe(gulp.dest(`dist/js`))
		.pipe(browserSync.stream());
});


// Xử lý file pug
gulp.task('pug', function () {
	return gulp.src('src/templates/*.pug')
		.pipe(plumber({
			errorHandler: function (error) {
				console.log(error.toString());
				this.emit('end');
			}
		}))
		.pipe(pug({
			pretty: true,
		}))
		.pipe(gulp.dest('./dist'))
		.pipe(browserSync.stream({
			match: '**/*.html'
		}));
});

// Xu ly file .sass
gulp.task('sass', function () {
	return gulp.src('src/lib/main.sass')
		.pipe(sass().on('error', sass.logError))
		.pipe(autoPrefixer({
			browsers: ['last 4 versions'],
			cascade: false
		}))
		.pipe(cleanCSS())
		.pipe(gulp.dest('./dist/css'))
		.pipe(browserSync.stream());
});

// Xu ly file .js
gulp.task('js', function () {
	return gulp.src('src/js/**.js')
		.pipe(babel({
			presets: ['env']
		}))
		.pipe(uglify())
		.pipe(gulp.dest('./dist/js'))
		.pipe(browserSync.stream());
});

// Task refresh
gulp.task('serve', function () {
	browserSync.init({
		notify: true,
		server: './dist',
		port: 9999,
	});
});


// Task Theo doi
gulp.task('watch', function () {
	gulp.watch('src/vendor/core.sass', ['concat-css']);
	gulp.watch('src/vendor/core.js', ['concat-js']);
	gulp.watch('src/templates/**/*.pug', ['pug']);
	gulp.watch('src/lib/**/*.pug', ['pug']);
	gulp.watch('src/lib/**/*.sass', ['sass', 'process-img']);
	gulp.watch('src/js/main.js', ['js']);
	gulp.watch('src/fonts', ['process-font']);
	gulp.watch('src/img/**/*', ['process-img']);
	gulp.watch('./dist/*.html');
}).on('end', browserSync.reload);

// main task
gulp.task('default', function (cb) {
	runSequence(
		'clean',
		'font',
		'img',
		'concat-js',
		'concat-css',
		'pug',
		'js',
		'sass',
		'watch',
		'serve',
		cb);
});


gulp.task('process-img', function (cb) {
	runSequence(
		'del-img',
		'img',
		cb
	);
});


gulp.task('process-font', function (cb) {
	runSequence(
		'del-font',
		'font',
		cb
	);
});


// Task copy font
gulp.task('font', function () {
	gulp.src('src/fonts/**')
		.pipe(gulp.dest('./dist/fonts'))
	gulp.src('src/fonts/**')
		.pipe(gulp.dest('./dist/css/fonts'))
	gulp.src('src/webfonts/**')
		.pipe(gulp.dest('./dist/webfonts'))
	gulp.src('css/**')
		.pipe(gulp.dest('./dist/css'))
});


// Task copy img
gulp.task('img', function () {
	gulp.src('src/img/**/*')
		.pipe(gulp.dest('./dist/img'))
	gulp.src('src/video/**')
		.pipe(gulp.dest('./dist/video'))
});


// Task xoá thư mục dist
gulp.task('clean', function () {
	return del(['dist']);
});


// Task xóa thư mục img
gulp.task('del-img', function () {
	return del(['dist/img']);
});


// Task xóa thư mục fonts
gulp.task('del-font', function () {
	return del(['dist/fonts', 'dist/webfonts']);
});