$(document).ready(function() {

  $(window).load(function(){
    if (localStorage.getItem('visited') == true) {
      $('#tourModal').modal('show');
    }
    
    localStorage.setItem('visited', true);

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
    $("#tourBody").append("<h4><img src=\"/assets/tour/carlene.png\" class=\"tour-image\">Connect with an expert planner to get the help you need in making your dream wedding a reality. Our planners will help you find and book the perfect wedding vendors for your style and budget, all at a fraction of the cost of a full time planner!</h4>");

    $(".tour-slide3").remove();
    e.preventDefault();
  });

});