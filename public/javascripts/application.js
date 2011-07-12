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
  $('#new_sites .site').click(
    function(){
      window.location=$(this).find("a").attr("href"); return false;
    }
  );
});
