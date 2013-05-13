function addButtons(eles){
    eles.css("opacity","0");

    eles.hover(function(){
      $(this).stop().animate({opacity: 1}, "slow");
    },
       
    // 3. Make button disappear when mouse leaves image
    function () {
      $(this).stop().animate({opacity: 0}, "slow");
    });
}

$(document).ready(function() {

  addButtons($(".roll"));

  // Generate the grid layout using the freetile jQuery plugin
  $('#container').freetile({
    animate: true
  });

  // Event handling for hovering over images: 
  // 1. make button invisible
  $(".roll").css("opacity","0");

  // 2. Make button appear when mouse hovers over image
  $(document).on('hover', '.roll', function() {
    $(this).stop().animate({opacity: 1}, "slow");
  },
     
  // 3. Make button disappear when mouse leaves image
  function () {
      $(this).stop().animate({opacity: 0}, "slow");
  });

  $(".alert").alert()
    

});