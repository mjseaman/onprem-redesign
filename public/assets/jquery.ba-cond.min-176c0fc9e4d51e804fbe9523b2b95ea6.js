/*
 * cond - v0.1 - 6/10/2009
 * http://benalman.com/projects/jquery-cond-plugin/
 * 
 * Copyright (c) 2009 "Cowboy" Ben Alman
 * Licensed under the MIT license
 * http://benalman.com/about/license/
 * 
 * Based on suggestions and sample code by Stephen Band and DBJDBJ in the
 * jquery-dev Google group: http://bit.ly/jqba1
 */
!function(n){n.fn.cond=function(){for(var t,i,c,r,u=arguments,l=0;!i&&l<u.length;)i=u[l++],c=u[l++],i=n.isFunction(i)?i.call(this):i,r=c?i?c.call(this,i):t:i;return r!==t?r:this}}(jQuery);