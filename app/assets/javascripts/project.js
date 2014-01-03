$(document).ready(function(){
	// initializeIsotope($('.project-container'),$('.project'));
});

// $(window).resize(function(){
// 	console.log('window resized');
// });


// Initialize the Isotope layout of a set of items, based on container and item tags
// function initializeIsotope($container,$item) {
// 	console.log('in initializeIsotope');
// 	$container.isotope({
// 		itemSelector	: $item,
// 		layoutMode		: 'masonry'
// 	})
// }

$.Isotope.prototype._getCenteredMasonryColumns = function() {
  this.width = this.element.width();
  
  var parentWidth = this.element.parent().width();
  
                // i.e. options.masonry && options.masonry.columnWidth
  var colW = this.options.masonry && this.options.masonry.columnWidth ||
                // or use the size of the first item
                this.$filteredAtoms.outerWidth(true) ||
                // if there's no items, use size of container
                parentWidth;
  
  var cols = Math.floor( parentWidth / colW );
  cols = Math.max( cols, 1 );

  // i.e. this.masonry.cols = ....
  this.masonry.cols = cols;
  // i.e. this.masonry.columnWidth = ...
  this.masonry.columnWidth = colW;
};

$.Isotope.prototype._masonryReset = function() {
  // layout-specific props
  this.masonry = {};
  // FIXME shouldn't have to call this again
  this._getCenteredMasonryColumns();
  var i = this.masonry.cols;
  this.masonry.colYs = [];
  while (i--) {
    this.masonry.colYs.push( 0 );
  }
};

$.Isotope.prototype._masonryResizeChanged = function() {
  var prevColCount = this.masonry.cols;
  // get updated colCount
  this._getCenteredMasonryColumns();
  return ( this.masonry.cols !== prevColCount );
};

$.Isotope.prototype._masonryGetContainerSize = function() {
  var unusedCols = 0,
      i = this.masonry.cols;
  // count unused columns
  while ( --i ) {
    if ( this.masonry.colYs[i] !== 0 ) {
      break;
    }
    unusedCols++;
  }
  
  return {
        height : Math.max.apply( Math, this.masonry.colYs ),
        // fit container to columns that have been used;
        width : (this.masonry.cols - unusedCols) * this.masonry.columnWidth
      };
};


$(function(){
  
  var $container = $('.project-container');
  
  
  // add randomish size classes
  $container.find('.project').each(function(){
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
    itemSelector : '.project',
    masonry : {
      // columnWidth : 110
    },
    getSortData : {
    }
  });
    
  // filter items when filter link is clicked
  $('#filters a').click(function(){
    var selector = $(this).attr('data-filter');
    $container.isotope({ filter: selector });
    return false;
  });

  var $optionSets = $('#options .option-set'),
      $optionLinks = $optionSets.find('a');

  $optionLinks.click(function(){
    var $this = $(this);
    // don't proceed if already selected
    if ( $this.hasClass('selected') ) {
      return false;
    }
    var $optionSet = $this.parents('.option-set');
    $optionSet.find('.selected').removeClass('selected');
    $this.addClass('selected');

    // make option object dynamically, i.e. { filter: '.my-filter-class' }
    var options = {},
        key = $optionSet.attr('data-option-key'),
        value = $this.attr('data-option-value');
    // parse 'false' as false boolean
    value = value === 'false' ? false : value;
    options[ key ] = value;
    if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
      // changes in layout modes need extra logic
      changeLayoutMode( $this, options )
    } else {
      // otherwise, apply new options
      $container.isotope( options );
    }
    
    return false;
  });
  
});

// function squareUp($element) {
// 	console.log ($element.width()+'px');
// 	$element.height($element.width()+'px');
// }