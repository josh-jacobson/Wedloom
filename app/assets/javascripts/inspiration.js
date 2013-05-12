$(document).ready(function() {

  $(window).load(function(){
    $('#tourModal').modal('show');
  });
  
  $(document).on("click", '.tour-slide2', function(e) {
    $("#tourHeader").empty();
    $("#tourHeader").append("<h3>Get Inspired</h3>");

    $("#tourBody").empty();
    $("#tourBody").append("<p>Using the Inspiration Board, which features photos from real weddings in the Chicagoland area, select the images that match your style to add to your Loom. </p>");

    $(".tour-slide2").remove();
    $("#tourFooter").append("<a class=\"btn btn-primary tour-slide3\" data-toggle=\"modal\" href=\"#\">Next</a>");
    e.preventDefault();
  });

  $(document).on("click", '.tour-slide3', function(e) {
    $("#tourHeader").empty();
    $("#tourHeader").append("<h3>Get Expert Guidance</h3>");

    $("#tourBody").empty();
    $("#tourBody").append("<p>Once you’ve populated your Loom, connect with an expert planner who will help make your dreams a reality through online chats at a fraction of the cost of a full time planner!</p>");

    $(".tour-slide3").remove();
    e.preventDefault();
  });

});