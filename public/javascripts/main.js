$(document).ready(function(){
  $('#buttons_menu .button').hover(
    function(){
      $(this).addClass('active')
    },
    function(){
      $(this).removeClass('active')
    }
  );
  $('#buttons_menu .button').click(
    function(){
      window.location=$(this).find("a").attr("href"); return false;
    }
  );
});
