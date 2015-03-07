
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>asp测试文档</title>
<script type="text/javascript">
window.onload=function()
{
//	alert("ab");
var div=document.getElementById("text_div");
var tFun1=document.getElementById("text_fun1");
var tFun=document.getElementById("text_fun");
var tChara=document.getElementById("text_chara");
var tValue=document.getElementById("text_value");
var bInform=document.getElementById("b");
var bAdd=document.getElementById("b_add");
var bAdd2=document.getElementById("b_add2");
var bDel=document.getElementById("b_del");
var bNum=document.getElementById("b_num");
//查看元素数量
      bNum.onclick=function()
     {
	 var mybody=document.body;
	 //var d = document.createElement("div");
	 	var getid=document.getElementsByTagName(tFun1.value);
                 var geti=document.getElementById(tFun1.value) ;
  if(geti)
alert(tFun1.value+"名称id存在！");
else
	 alert(tFun1.value+"元素数量："+getid.length);
     };

//增加属性方法
      bAdd2.onclick=function()
     {
	var mybody=document.body;
 var geti=document.getElementById(tFun1.value) ;
if(geti)
{
alert("找到此id,将按此id添加属性。");
if((tFun.value==""))
geti[tChara.value]=tValue.value;
else
geti[tFun.value][tChara.value]=tValue.value;
	alert(tFun1.value+"元素属性方法按id添加成功！");
}
else
{
var getid=document.getElementsByTagName(tFun1.value);
if((tFun.value==""))
getid[getid.length-1][tChara.value]=tValue.value;
else
getid[getid.length-1][tFun.value][tChara.value]=tValue.value;
	 alert(tFun1.value+"元素属性方法添加成功！");
}
     };


//删除元素按钮
      bDel.onclick=function()
     {
	 var mybody=document.body;
 var geti=document.getElementById(tFun1.value) ;
if(geti)
{
alert(tFun1.value+"检测到此id，将按id删除！");
//alert((geti.parentNode).innerHTML);
//alert(typeof(geti));
(geti.parentNode).removeChild(geti);}
else
{	
//if(confirm("未找到此id，将按最后相同元素名称最后一个元素添加属性操作！"))
var getid=document.getElementsByTagName(tFun1.value);
((getid[getid.length-1]).parentNode).removeChild(getid[getid.length-1]);
alert(tFun1.value+"元素按元素名称删除成功！");
}
     };


//增加元素按钮
        bAdd.onclick=function()
     {
	// var mybody = document.getElementById("test");
	var mybody=document.body;


	 var add_new=document.createElement(tFun1.value);
	 


if((tFun.value==""))
add_new[tChara.value]=tValue.value;
else
add_new[tFun.value][tChara.value]=tValue.value;
	mybody.appendChild(add_new);
	 alert(tFun1.value+"元素增加成功！");
     };
//测试效果按钮
bInform.onclick=function()
  {
   var mybody=document.body;
var geti=document.getElementById(tFun1.value) ;
if(geti)
{
if((tChara.value=="")&&(tValue.value==""))
  geti[tFun.value]=function()
   {
    alert("你对"+tFun1.value+"进行了事件操作："+"\n"+tFun.value);
   };
  else
 geti[tChara.value]=tValue.value;
  alert("你对"+tFun1.value+"进行了操作："+"\n"+tFun.value+"\n"+tChara.value+"\n"+tValue.value);
}
else
{
	 //var d = document.createElement("div");
	 	var getid=document.getElementsByTagName(tFun1.value);
//	 alert("元素数量："+getid.length);
  
 if((tChara.value=="")&&(tValue.value==""))
  getid[getid.length-1][tFun.value]=function()
   {
    alert("你对"+tFun1.value+"进行了事件操作："+"\n"+tFun.value);
   };
  else
  getid[getid.length-1][tChara.value]=tValue.value;
  alert("你对"+tFun1.value+"进行了操作："+"\n"+tFun.value+"\n"+tChara.value+"\n"+tValue.value);

  }
   };


  
}

</script>
</head>

<body>
js/css测试文档：请根据相关参考帮助手册.例:对象object/元素标签/id；方法onclick/style；属性innerHTML/id...<br>
对象<input type="text" id="text_fun1" />
方法<input type="text" id="text_fun" />
属性<input type="text" id="text_chara" />
值<input type="text" id="text_value"/><br>
<input type="button" id="b" value="方法事件"/>
<input type="button" id="b_add" value="增加元素"/>
<input type="button" id="b_add2" value="添加属性"/>
<input type="button" id="b_del" value="删除元素"/>
<input type="button" id="b_num" value="查看id/元素个数"/>
<a href="http://bbw.svfree.net">帮帮网址信息网</a>特别制作。http://bbw.svfree.net
<div id="add_div" style="width:200px;height:200px;top:20px;left:20px;background:steelblue;">
<div id="text_div" style="width:100px;height:100px;top:40px;left:40px;background:green;">
原始<br> 
宽100;高100;上距40;<br>
左距40;<br>背景绿色；
</div>
原始<br> 
宽200;高200;上距20;<br>
左距20;背景浅蓝；
</div>
</body>
</html>

