/* ========================================================================
 * Bootstrap: collapse.js v3.1.1
 * http://getbootstrap.com/javascript/#collapse
 * ========================================================================
 * Copyright 2011-2014 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * ======================================================================== */
+function(t){"use strict";var e=function(s,n){this.$element=t(s),this.options=t.extend({},e.DEFAULTS,n),this.transitioning=null,this.options.parent&&(this.$parent=t(this.options.parent)),this.options.toggle&&this.toggle()};e.DEFAULTS={toggle:!0},e.prototype.dimension=function(){var t=this.$element.hasClass("width");return t?"width":"height"},e.prototype.show=function(){if(!this.transitioning&&!this.$element.hasClass("in")){var e=t.Event("show.bs.collapse");if(this.$element.trigger(e),!e.isDefaultPrevented()){var s=this.$parent&&this.$parent.find("> .panel > .in");if(s&&s.length){var n=s.data("bs.collapse");if(n&&n.transitioning)return;s.collapse("hide"),n||s.data("bs.collapse",null)}var i=this.dimension();this.$element.removeClass("collapse").addClass("collapsing")[i](0),this.transitioning=1;var a=function(){this.$element.removeClass("collapsing").addClass("collapse in")[i]("auto"),this.transitioning=0,this.$element.trigger("shown.bs.collapse")};if(!t.support.transition)return a.call(this);var l=t.camelCase(["scroll",i].join("-"));this.$element.one(t.support.transition.end,t.proxy(a,this)).emulateTransitionEnd(350)[i](this.$element[0][l])}}},e.prototype.hide=function(){if(!this.transitioning&&this.$element.hasClass("in")){var e=t.Event("hide.bs.collapse");if(this.$element.trigger(e),!e.isDefaultPrevented()){var s=this.dimension();this.$element[s](this.$element[s]())[0].offsetHeight,this.$element.addClass("collapsing").removeClass("collapse").removeClass("in"),this.transitioning=1;var n=function(){this.transitioning=0,this.$element.trigger("hidden.bs.collapse").removeClass("collapsing").addClass("collapse")};return t.support.transition?(this.$element[s](0).one(t.support.transition.end,t.proxy(n,this)).emulateTransitionEnd(350),void 0):n.call(this)}}},e.prototype.toggle=function(){this[this.$element.hasClass("in")?"hide":"show"]()};var s=t.fn.collapse;t.fn.collapse=function(s){return this.each(function(){var n=t(this),i=n.data("bs.collapse"),a=t.extend({},e.DEFAULTS,n.data(),"object"==typeof s&&s);!i&&a.toggle&&"show"==s&&(s=!s),i||n.data("bs.collapse",i=new e(this,a)),"string"==typeof s&&i[s]()})},t.fn.collapse.Constructor=e,t.fn.collapse.noConflict=function(){return t.fn.collapse=s,this},t(document).on("click.bs.collapse.data-api","[data-toggle=collapse]",function(e){var s,n=t(this),i=n.attr("data-target")||e.preventDefault()||(s=n.attr("href"))&&s.replace(/.*(?=#[^\s]+$)/,""),a=t(i),l=a.data("bs.collapse"),o=l?"toggle":n.data(),r=n.attr("data-parent"),h=r&&t(r);l&&l.transitioning||(h&&h.find('[data-toggle=collapse][data-parent="'+r+'"]').not(n).addClass("collapsed"),n[a.hasClass("in")?"addClass":"removeClass"]("collapsed")),a.collapse(o)})}(jQuery);