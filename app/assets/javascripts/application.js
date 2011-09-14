//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree ./gritter

$(document).ready(function(){
  $('#act_button').addClass('active');
  $('ul#main_menu a').hover(
    function(){
      $('#act_button').removeClass('active');
    },
    function(){
      $('#act_button').addClass('active');
    }
  );
  $('#new_sites .site').click( function(){ window.location=$(this).find("a").attr("href"); return false; });
  $('#last_in_blog .post').click( function(){ window.location=$(this).find("a").attr("href"); return false; });
  $('.site_box').click( function(){ window.location=$(this).find("a").attr("href"); return false; });
	$('.site_box').hover(
		function(){
			$(this).addClass('active');
		},
		function(){
			$(this).removeClass('active');
		}
	);
  $('#source').quicksand( $('#destination li') );
});
