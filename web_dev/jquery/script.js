$(document).ready(function() {
	$("td:even").mouseover(function() {
		$(this).css("background-color", "red");
	})

	$("td:odd").mouseover(function() {
		$(this).css("background-color", "#0CE245");
	})
});

$(document).ready(function() {
	$("#not_true").click(function() {
		$(this).fadeOut(3000);
	});
});
