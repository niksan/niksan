/*
 * searchField - jQuery plugin to display and remove
 * a default value in a searchvalue on blur/focus
 *
 * Copyright (c) 2008 Jï¿½Ã¶rn Zaefferer
 *
 * $Id$
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 *
 */
/**
 * Clear the help text in a search field (either in the value or title attribute)
 * when focused, and restore it on blur if nothing was entered. If the value is
 * blank but there is a title attribute, the title will be moved to the initial value.
 *
 * @example $('#quicksearch').searchField();
 * @before <input id="quicksearch" title="Enter search here" name="quicksearch" />
 * @result <input id="quicksearch" value="Enter search here" name="quicksearch" />
 *
 * @name searchField
 * @type jQuery
 * @cat Plugins/SearchField
 */
jQuery.fn.searchField=function(a){return this.each(function(){var a=a||this.title;if(!a)return;var b=this,c=$(this);this.type=="password"&&(b=$("<input />").insertBefore(this).css("display",$(this).css("display")).attr("size",this.size).attr("title",this.title).attr("class",this.className).addClass("watermark")[0],this.value?$(b).hide():$(this).hide()),(!b.value||a==this.value)&&$(b).addClass("watermark");if(!this.value||b!=this)b.value=a;$(b).focus(function(){b!=c[0]?($(this).hide(),c.show().focus()):this.value==a&&(this.value="",$(this).removeClass("watermark"))}),$(this).blur(function(){this.value.length||(b!=c[0]?($(b).show(),c.hide()):(this.value=a,$(this).addClass("watermark")))}),$(this).parents("form:first").submit(function(){$(b).hasClass("watermark")&&($(b).attr("value",""),$(b).removeClass("watermark"))})})}