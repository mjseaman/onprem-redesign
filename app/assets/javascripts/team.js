$(document).ready(function(){

  // Show person overlay on hover
  $('.person').hover(function(){
    $(this).find('.person-info').show();
  }, function(){
    $(this).find('.person-info').hide();
  });
  
  // ISOTOPE
  var $container = $('.person-container');
  
  
  // add randomish size classes
  $container.find('.person').each(function(){
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
    itemSelector : '.person',
    masonry : {
    }
  });


// Badass Filter
  var filters = {};

  // filter buttons
  $('.filter a').click(function(){
    var $this = $(this);
    // don't proceed if already selected
    if ( $this.hasClass('selected') ) {
      return;
    }
    
    var $optionSet = $this.parents('.option-set');
    // change selected class
    $optionSet.find('.selected').removeClass('selected');
    $this.addClass('selected');
    
    // store filter value in object
    // i.e. filters.color = 'red'
    var group = $optionSet.attr('data-filter-group');
    filters[ group ] = $this.attr('data-filter-value');
    // convert object into array
    var isoFilters = [];
    for ( var prop in filters ) {
      isoFilters.push( filters[ prop ] )
    }
    var selector = isoFilters.join('');
    console.log(selector);
    $container.isotope({ filter: selector });

    return false;
  });

//   // filter items when filter link is clicked
//   $('#filters a').click(function(){
//     var selector = $(this).attr('data-filter');
//     $container.isotope({ filter: selector });
//     return false;
//   });

  // var $optionSets = $('#options .option-set'),
  //     $optionLinks = $optionSets.find('a');

  // $optionLinks.click(function(){
  //   var $this = $(this);
  //   // don't proceed if already selected
  //   if ( $this.hasClass('selected') ) {
  //     return false;
  //   }
  //   var $optionSet = $this.parents('.option-set');
  //   $optionSet.find('.selected').removeClass('selected');
  //   $this.addClass('selected');

  //   // make option object dynamically, i.e. { filter: '.my-filter-class' }
  //   var options = {},
  //       key = $optionSet.attr('data-option-key'),
  //       value = $this.attr('data-option-value');
  //   // parse 'false' as false boolean
  //   value = value === 'false' ? false : value;
  //   options[ key ] = value;
  //   if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
  //     // changes in layout modes need extra logic
  //     changeLayoutMode( $this, options )
  //   } else {
  //     // otherwise, apply new options
  //     $container.isotope( options );
  //   }
    
  //   return false;
  // });
  
});