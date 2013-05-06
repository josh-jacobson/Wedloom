$(document).ready(function() {

  // Generate the grid layout using the freetile jQuery plugin
  $('#container').freetile({
    animate: true
  });

  // Event handling for hovering over images: 
  // 1. make button invisible
  // $(".roll").css("opacity","0");

  // 2. Make button appear when mouse hovers over image
  $('#container').on('hover', '.roll', function() {
    $(this).stop().animate({opacity: 1}, "slow");
  },
     
  // 3. Make button disappear when mouse leaves image
  function () {
      $(this).stop().animate({opacity: 0}, "slow");
  });

  // Event handling for button click
  $(".addtoloom").click(function() {

  });

  $(".alert").alert()
    

});