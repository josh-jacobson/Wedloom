$(document).ready(function() {

	var explanation1 = "Explanation 1",
	explanation2 = "Explanation 2",
	explanation3 = "Explanation 3",
	explanation4 = "Explanation 4",
	explanation5 = "Explanation 5",
	explanation6 = "Explanation 6";

	$('#option1').hover(function() {
    $("#explanation").text(explanation1);
	});

	$('#option2').hover(function() {
    $("#explanation").text(explanation2);
	});

	$('#option3').hover(function() {
    $("#explanation").text(explanation3);
	});

	$('#option4').hover(function() {
    $("#explanation").text(explanation4);
	});

	$('#option5').hover(function() {
    $("#explanation").text(explanation5);
	});

	$('#option6').hover(function() {
    $("#explanation").text(explanation6);
	});

});