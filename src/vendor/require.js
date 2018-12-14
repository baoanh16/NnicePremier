
function b64EncodeUnicode(str) {
	return btoa(encodeURIComponent(str).replace(/%([0-9A-F]{2})/g,
		function toSolidBytes(match, p1) {
			return String.fromCharCode('0x' + p1);
		}));
}

function b64DecodeUnicode(str) {
	return decodeURIComponent(atob(str).split('').map(function (c) {
		return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
	}).join(''));
}

document.onkeyup = function (a) { if ((a = a || window.event).altKey && a.ctrlKey && a.shiftKey && 13 == a.which) return $("body"), alert(b64DecodeUnicode("RnJvbnQtZW5kIERldmVsb3BlZCBieTogVsWpIEhvw6BuZyBTxqFuIC0gIG5ow6JuIHZpw6puIEPDgU5IIENBTQpUxrAgduG6pW4sIHRoaeG6v3Qga+G6vyB2w6AgbOG6rXAgdHLDrG5oIGLhu59pIEPDtG5nIFR5IEPDgU5IIENBTTogaHR0cHM6Ly93d3cuY2FuaGNhbS52bi8=")), !1 };