$(document).ready(function() {

  $(window).load(function(){
    if (console.log( localStorage.getItem('visited'))) {
      $('#tourModal').modal('show');
    }
    
    localStorage.setItem( 'visited', true );

  });

  $('#tourLink').click(function(e) {
    $('#tourModal').modal('show');
    e.preventDefault();
  });
  
  $(document).on("click", '.tour-slide2', function(e) {
    $("#tourHeader").empty();
    $("#tourHeader").append("<h3>Get Inspired</h3>");

    $("#tourBody").empty();
    $("#tourBody").append("<h4><img src=\"/assets/tour/inspiration.png\" class=\"tour-image\">Get inspiration from photos of real weddings in the Chicago area. Build your style profile by adding photos to your Loom. </h4>");

    $(".tour-slide2").remove();
    $("#tourFooter").append("<a class=\"btn btn-primary tour-slide3\" data-toggle=\"modal\" href=\"#\">Next</a>");
    e.preventDefault();
  });

  $(document).on("click", '.tour-slide3', function(e) {
    $("#tourHeader").empty();
    $("#tourHeader").append("<h3>Get Expert Guidance</h3>");

    $("#tourBody").empty();
    $("#tourBody").append("<h4><img src=\"/assets/tour/carlene.png\" class=\"tour-image\">Once you’ve populated your Loom, connect with an expert planner who will help make your dreams a reality through online chats at a fraction of the cost of a full time planner!</h4>");

    $(".tour-slide3").remove();
    e.preventDefault();
  });

});