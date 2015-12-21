
//左侧导航点击收缩展开
 $("div.list_con h3").click(function () {
        if ($(this).next("ul").css("display") == "block") {
            $(this).next("ul").slideUp();
            $(this).children("span").css("background", "url(../web/images/open.gif) no-repeat 0 0 ");
        }
        else if ($(this).next("ul").css("display") == "none") {
        	$("div.list_con h3").each(function () {
            	$(this).next("ul").slideUp();
            	$(this).children("span").css("background", "url(../web/images/open.gif) no-repeat 0 0 ");
            });
            $(this).children("span").css("background", "url(../web/images/close.gif) no-repeat 0 0 ");
            $(this).next("ul").slideDown();
        }
    });
    $("div.list_con ul").each(function () {
        if ($(this).css("display") == "block") {
            $(this).prev("h3").children("span").css("background", "url(../web/images/close.gif) no-repeat 0 0 ");

        } else if ($(this).css("display") == "none") {
            $(this).prev("h3").children("span").css("background", "url(../web/images/open.gif) no-repeat 0 0 ");
        }
    });
	
	
/*表格*/
$(document).ready(function(){
    var dtSelector = ".good";
    var tbList = $(dtSelector);
 
    tbList.each(function() {
        var self = this;
        $("tr:even:not(:first)", $(self)).addClass("even"); 
        $("tr:odd", $(self)).addClass("odd"); 
 
      
        // 选择行变色
        $("tr", $(self)).click(function (){
            var trThis = this;
            $(self).find(".trSelected").removeClass('trSelected');
            if ($(trThis).get(0) == $("tr:first", $(self)).get(0)){
                return;
            }
            $(trThis).addClass('trSelected');
        });
    });
});


/*ul*/
$(document).ready(function(){
    var dtSelector = ".pm personnel";
    var tbList = $(dtSelector);
 
    tbList.each(function() {
          var self = this;
        $("ul:even:not(:first)", $(self)).addClass("even"); 
        $("ul:odd", $(self)).addClass("odd"); 
 
     
        // 选择行变色
        $("ul", $(self)).click(function (){
            var trThis = this;
            $(self).find(".selcted").removeClass('selcted');
            if ($(trThis).get(0) == $("ul:first", $(self)).get(0)){
                return;
            }
            $(trThis).addClass('selcted');
        });
    });
});

//选项卡
$(function(){
var $div_li =$("div.ordermenu ul li");
$div_li.click(function(){
$(this).addClass("on")           
.siblings().removeClass("on");  
var index =  $div_li.index(this); 
$("div.content > div") 
.eq(index).show()
.siblings().hide();
}).hover(function(){
$(this).addClass("hover");
},function(){
$(this).removeClass("hover");
})
})