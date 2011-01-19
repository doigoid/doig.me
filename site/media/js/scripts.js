$(document).ready(function() { 
  $("#sitelogo, #nav>ul>li").hover(function(){
    $("#doig").animate({"opacity" : 0}, 100);
  }, function(){
    $("#doig").animate({"opacity" : 1}, 100);
  });
});