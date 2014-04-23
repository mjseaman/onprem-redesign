$(function() {

  var Page = (function() {

    var animateSlides = true; // When true, slides will animate. When false, they will not.
    var $navArrows = $( '#nav-arrows' ),
    $nav = $( '#nav-dots > span' ),
      slitslider = $( '#slider' ).slitslider( {
        onBeforeChange : function( slide, pos ) {

          $nav.removeClass( 'nav-dot-current' );
          $nav.eq( pos ).addClass( 'nav-dot-current' );

        }
      } ),

      init = function() {

        initEvents();
        
      },
      initEvents = function() {

        // Navigation events
        // When the user clicks the "last" button, go to the previous slide
        
        $navArrows.children( ':last' ).on( 'click', function() {

                animateSlides = false; // Stop animation
                slitslider.next();
                return false;

        } );

        // When the user clicks the "next" button, go to the next slide
        
        $navArrows.children( ':first' ).on( 'click', function() {
                
                animateSlides = false; // Stop animation
                slitslider.previous();
                return false;

        } );

        // When the user clicks a circle navigation button, go to the corresponding slide
        
        $nav.each( function( i ) {
        
          $( this ).on( 'click', function( event ) {
            
            animateSlides = false; // Stop animation
            console.log(animateSlides);
            var $dot = $( this );
            
            if( !slitslider.isActive() ) {

              $nav.removeClass( 'nav-dot-current' );
              $dot.addClass( 'nav-dot-current' );
            
            }
            
            slitslider.jump( i + 1 );
            return false;
          
          } );

          // Move to the next slide at a 4-second interval

          // Interval at which the 
          var sliderInterval = 4000;

          function animate() {
            if (animateSlides == true) {
              slitslider.next();
              setTimeout(animate, sliderInterval);
            }
          }

          setTimeout(animate, sliderInterval);
          
        } );

      };

      return { init : init };

  })();

  Page.init();

});