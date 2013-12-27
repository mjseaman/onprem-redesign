$(document).ready(function(){
	initializeIsotope($('.project-container'),$('.project'));
});


// Initialize the Isotope layout of a set of items, based on container and item tags
function initializeIsotope($container,$item) {
	console.log('in initializeIsotope');
	$container.isotope({
		itemSelector	: $item,
		layoutMode		: 'masonry'
	})
}