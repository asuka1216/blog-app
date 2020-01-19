$(function(){
  $('.content_post').on('click', function(){
    $(this).find('b, strong').stop(true).animate({
      opacity: 1
    },300);
  })
  $('.content_post').on('dblclick', function(){
    $(this).find('b, strong').stop(true).animate({
      opacity: ''
    },300);
  });
});

$(function(){
  $('.btn3').on('click', function(){
    $(this).stop(true).animate({
      opacity: 0
    },100);
  });
});

$(function(){
  $('.btn2').on('click', function(){
    $(this).stop(true).animate({
      opacity: 0
    },100);
  });
});