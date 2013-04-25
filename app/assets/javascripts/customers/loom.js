$(document).ready(function() {
  $('#tileContainer').freetile({
    animate: true,
    elementDelay: 30
  });

    // Event handling for hovering over images: 
    // 1. make button invisible
    $(".roll").css("opacity","0");
 
    // 2. Make button appear when mouse hovers over image
    $(".roll").hover(function () {
      	$(this).stop().animate({opacity: 1}, "slow");
    },
         
    // 3. Make button disappear when mouse leaves image
    function () {
        $(this).stop().animate({opacity: 0}, "slow");
    });
});