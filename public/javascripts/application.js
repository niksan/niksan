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
});
