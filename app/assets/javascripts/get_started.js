$(document).ready(function() {

	var explanation1 = "Wedloom coaches can provide personalized recommendations for venues, photographers, caterers and florists in the Chicago area based off your style and budget. We’ve worked with dozens of vendors and can give you advice you won’t find on Yelp.",
	explanation2 = "Wedloom coaches know how much every piece should cost, from venues to photographers. We can help you save time by giving you up-front pricing estimates, as well as detailed price quotes on Chicago area venues in a comparable format - something vendors don’t provide on their websites.",
	explanation3 = "Have a venue selected already? Wedloom will help with you review your contract to make sure you didn’t miss anything important and are getting the best possible deal. ",
	explanation4 = "High quality photos of real weddings in Chicago can help you figure out which venues, invitations, and floral arrangements are a good match for you. ",
	explanation5 = "We can help you make smart tradeoffs that keep you within your budget goals, keep you on track through a collaborative budget tracker, and help you find smart ways to cut costs.",
	explanation6 = "Cookie-cutter wedding timeline and to do lists are easy to find, but can only go so far. We can help you build a detailed timeline and to do list that is specifically tailored to your wedding plans, and can follow up with you to keep you on track.";

	$('#option1').hover(function() {
    $("#explanation").text(explanation1);
    $('.option').removeClass('selected');
    $(this).addClass('selected');
	});

	$('#option2').hover(function() {
    $("#explanation").text(explanation2);
    $('.option').removeClass('selected');
    $(this).addClass('selected');
	});

	$('#option3').hover(function() {
    $("#explanation").text(explanation3);
    $('.option').removeClass('selected');
    $(this).addClass('selected');
	});

	$('#option4').hover(function() {
    $("#explanation").text(explanation4);
    $('.option').removeClass('selected');
    $(this).addClass('selected');
	});

	$('#option5').hover(function() {
    $("#explanation").text(explanation5);
    $('.option').removeClass('selected');
    $(this).addClass('selected');
	});

	$('#option6').hover(function() {
    $("#explanation").text(explanation6);
    $('.option').removeClass('selected');
    $(this).addClass('selected');
	});

	(function(e,t,n,r){if(e)return;t._appt=true;var i=n.createElement(r),s=n.getElementsByTagName(r)[0];i.async=true;i.src='//dje0x8zlxc38k.cloudfront.net/loaders/s-min.js';s.parentNode.insertBefore(i,s)})(window._appt,window,document,"script");

});