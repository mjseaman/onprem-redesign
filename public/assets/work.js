$(document).ready(function(){var e=$(".project-container");e.find(".project").each(function(){var e=$(this),t=parseInt(e.find(".number").text(),10);1===t%7%2&&e.addClass("width2"),0===t%3&&e.addClass("height2")}),e.isotope({itemSelector:".project",masonry:{}});var t={};$(".filter a").click(function(){var a=$(this);if(!a.hasClass("selected")){var r=a.parents(".option-set");r.find(".selected").removeClass("selected"),a.addClass("selected");var s=r.attr("data-filter-group");t[s]=a.attr("data-filter-value");var i=[];for(var o in t)i.push(t[o]);var n=i.join("");return console.log(n),e.isotope({filter:n}),!1}})});