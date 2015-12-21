<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>保险费用估算配置 - EcStore</title>
    <link href="../CSS/index.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../LIB/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../LIB/nav.js"></script>
    <script type="text/javascript" src="../LIB/common.js"></script>
    <script type="text/javascript" src="../LIB/list.js"></script>
</head>
<body>
<ul id="test-css">
    <li class="lang dy"><span>JavaScript</span></li>
    <li class="lang"><span>Java</span></li>
    <li class="lang dy"><span>Python</span></li>
    <li class="lang"><span>Swift</span></li>
    <li class="lang dy"><span>Scheme</span></li>
</ul>

 <script type="text/javascript">
     $('#test-css li.dy>span').css('background-color', '#ffd351').css('color', 'red');
 </script>

<style>
    .highlight {
        color: #dd1144;
        background-color: #ffd351;
    }
</style>

 <div id="test-highlight-css">
    <ul>
        <li class="py"><span>Python</span></li>
        <li class="js"><span>JavaScript</span></li>
        <li class="sw"><span>Swift</span></li>
        <li class="hk"><span>Haskell</span></li>
    </ul>
</div>

   <script type="text/javascript">
//       $('#test-highlight-css ul li >span').css('background-color', '#ffd351').css('color', 'red');
       //使用addclass的方法实现
       var div = $('#test-highlight-css');
       div.addClass('div1');
     $('div.div1 ul li >span').css('background-color', '#ffd351').css('color', 'red');
   </script>

<div id="test-div">
    <ul>
        <li><span>JavaScript</span></li>
        <li><span>Python</span></li>
        <li><span>Swift</span></li>
    </ul>
</div>

   <script type="text/javascript">
//       除了列出的3种语言外，请再添加Pascal、Lua和Ruby，然后按字母顺序排序节点：
       //先得到ul标签
      var ul =  $('#test-div ul ');
       //添加节点
      ['Pascal','Lua','Ruby'].map(function(x){
          ul.append("<li><span>"+x+"</span></li>");
      });
      //排序
       var li = ul.find('li');
       li.sort(function(x,y){
           if($(x).text()> $(y).text()){
               return 1;
           }else {
               return -1;
           }
       });
       ul.append(li);
   </script>
</body>
</html>