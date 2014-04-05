$(document).ready(function(){
  
  var $container = $('.offering-container');
  
  // hover slide and fade effect (dave)
  $('.offering').hover(function(){
    $(this).find('.offering-detail').slideDown(250);
    $('img',this).stop().animate({'opacity': '.4'}, 'fast');
    //$(this).height('auto');
  }, function(){
    $(this).find('.offering-detail').slideUp(250);
    $('img',this).stop().animate({'opacity': '1'}, 'fast');
    //$(this).height('450px');
  });
  
  // add randomish size classes
  $container.find('.offering').each(function(){
    var $this = $(this),
        number = parseInt( $this.find('.number').text(), 10 );
    if ( number % 7 % 2 === 1 ) {
      $this.addClass('width2');
    }
    if ( number % 3 === 0 ) {
      $this.addClass('height2');
    }
  });
  
  $container.isotope({
    itemSelector : '.offering',
    masonry : {
    }
  });
});