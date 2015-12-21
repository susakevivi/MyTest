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
   <div class="testing">
    <ul class="lang">
        <li class="lang-javascript">JavaScript</li>
        <li class="lang-python">Python</li>
        <li class="lang-lua">Lua</li>
    </ul>
  </div>

  <script type="text/javascript">
      //学习层级选择器
      var s = $('ul.lang li.lang-javascript').text();
      console.log("javascript的文本:"+s);
      var s1 = $('div.testing li.lang-javascript').text();
      console.log("依然选择javascript的文本:"+s1);

      //练习子选择器
      var s2 = $('ul.lang>li.lang-javascript').text();
      console.log("文本"+s2);
      //越过直接的父子包含关系,无法选择
      var s3 = $('div.testing>li.lang-javascript').text();
      console.log("文本111"+s3);
  </script>

   <div class="test-selector">
       <ul class="test-lang">
           <li class="lang-javascript">JavaScript</li>
           <li class="lang-python">Python</li>
           <li class="lang-lua">Lua</li>
       </ul>
       <ol class="test-lang">
           <li class="lang-swift">Swift</li>
           <li class="lang-java">Java</li>
           <li class="lang-c">C</li>
       </ol>
   </div>

   <script type="text/javascript">
       // 分别选择所有语言，所有动态语言，所有静态语言，JavaScript，Lua，C等:
       var s = $('div.test-selector li').text();
       console.log("打印所有语言:"+s);
       //所有动态语言
       var s1 = $('ul.test-lang li').text();
       console.log(s1);
       //所有的静态语言
       var s2 = $('ol.test-lang li').text();
       console.log(s2);
       //javascript
       // 用包含的div直接全部获得,其实它就是一个树,通过枝干可以得到想要的东西
       var s3 = $('div.test-selector li.lang-javascript,li.lang-lua,li.lang-c').text();
       console.log(s3);
   </script>

   <ul class="lang">
       <li class="js dy">JavaScript</li>
       <li class="dy">Python</li>
       <li id="swift">Swift</li>
       <li class="dy">Scheme</li>
       <li name="haskell">Haskell</li>
   </ul>

   <script type="text/javascript">
       //过滤
       var s = $('ul.lang');
       var s1 = s.find('.dy').text();
       console.log("打印文本"+s1);
       var s2= s.find('#swift').text();
       console.log(s2);
       var s3 = s.find('[class=dy]').text();
       console.log(s3);
       var s4 = s.find('[name=haskell]').text();
       console.log(s4);
       //find方法是查询,fliter方法是过滤,相差不大
       var s5 = $('ul.lang li');
       //这里用html()只能得到第一个节点的文本
       // 用text()可以得到全部以dy结尾的文本
       var s6 = s5.filter('.dy').text();
       console.log(s6);
   </script>

　　　<form id="test-form" action="#0" onsubmit="return false;">
       <p><label>Name: <input name="name"></label></p>
       <p><label>Email: <input name="email"></label></p>
       <p><label>Password: <input name="password" type="password"></label></p>
       <p>Gender: <label><input name="gender" type="radio" value="m" checked> Male</label>
           <label><input name="gender" type="radio" value="f"> Female</label></p>
       <p><label>City: <select name="city">
           <option value="BJ" selected>Beijing</option>
           <option value="SH">Shanghai</option>
           <option value="CD">Chengdu</option>
           <option value="XM">Xiamen</option>
       </select></label></p>
       <p><button type="submit">Submit</button></p>
   </form>
　　
　　　<script type="text/javascript">
            //输入值后，用jQuery获取表单的JSON字符串，
            // key和value分别对应每个输入的name和相应的value，
            // 例如：{"name":"Michael","email":...}
            $('button').click(function(){
            var json={};
            var input = $('#test-form :input[type!=submit]');
            input.map(function(){
                if(this.type !== "radio" || this.checked){
                     //输出name和对应的值
                    console.log("this.name:"+this.name+"this.value:"+this.value);
                    //将name和value用键值对的形式对应起来
                    //转换为json形式
                    json[this.name] = this.value; }
            });
               //检查是否为json形式
               json=JSON.stringify(json);

                console.log(json);
            });
       </script>
</body>
</html>