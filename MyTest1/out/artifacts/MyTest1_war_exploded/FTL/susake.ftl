<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>保险费用估算配置 - EcStore</title>
    <link href="../CSS/index.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../LIB/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="../LIB/nav.js"></script>
    <script type="text/javascript" src="../LIB/common.js"></script>
    <script type="text/javascript" src="../LIB/list.js"></script>


    <script type="text/javascript">
        $(function() {
            $('#clickBtn').click(function() {
                var s = $('a').text();
                a = '123';
                console.log(a);
                console.log('zheshiabiaoqian:' + s);
                var s1 = $('span').text();
                console.log('zheshispanbiaoqian:' + s1);
            });
        });
    </script>
</head>
<body>
<div class="mydiv">
    <span> This is my JSP page.</span>
    <a> my name is susake</a>
</div>
<input type="button" id="clickBtn" value="点击我一下" />
<p id="js">JavaScript</p>
<div id="list">
    <p id="java">Java</p>
    <p id="python">Python</p>
    <p id="scheme">Scheme</p>
    <input type="file" id='findid'/>
</div>

<!-- HTML结构 -->
<div id="test-jquery">
    <p id="para-1" class="color-red">JavaScript</p>
    <p id="para-2" class="color-green">Haskell</p>
    <p class="color-red color-green">Erlang</p>
    <p name="name" class="color-black">Python</p>
    <form class="test-form" target="_blank" action="#0" onsubmit="return false;">
        <legend>注册新用户</legend>
        <fieldset>
            <p><label>名字: <input name="name"></label></p>
            <p><label>邮件: <input name="email"></label></p>
            <p><label>口令: <input name="password" type="password"></label></p>
            <p><button type="submit">注册</button></p>
        </fieldset>
    </form>
</div>
<script type="text/javascript">
    //选择器
//    仅选择JavaScript
    var s  = $('#para-1').text();
    console.log(s);
//    仅选择Erlang
    var s1 = $('.color-red.color-green').text();
     console.log(s1);
//    选择JavaScript和Erlang
    var s2 = $('p.color-red').text();
    console.log(s2);
//    选择所有编程语言
//通过class属性查找
   var s3 = $('[class^="color-"]').text();//尤其注意[ ^ ]这个符号,可以找出class中以color-开头的所有标签
    console.log(s3);
//    选择名字input
   var s4 = $('input[name="name"]');
    console.log(s4);
//    选择邮件和名字input
   var s5 = $('input[name="name",name="email"]');
    console.log(s5);
</script>
<script type="text/javascript">
    //       var list = document.getElementById('list');
    //	   list.removeChild(list.children[1]);
    var findid = document.getElementById('findid');
    var find  = findid.value;
    if(find.endsWith('.png') ){
        console.log("上传正确");
    }else{
        console.log("上传错误");
    }
</script>
</body>
</html>