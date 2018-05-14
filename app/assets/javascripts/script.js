$(function(){
  $( "tr.record" ).each(function(eq,el) {
    el = $(el)
    if(typeof(el.attr('id')) === "undefined"){
     el.attr("id","row" + eq)
    }

    el.on("click",function(){
      if(el.hasClass('active')){
      }
      else{
        $('tr.record').removeClass('active')
        el.addClass("active")
      }
    })


  });
});
