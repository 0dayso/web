
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

	 alert("元素数量："+getid.length);
     };

//增加属性方法
      bAdd2.onclick=function()
     {
	var mybody=document.body;
 //var mybody = document.getElementById("test");
	 //var d = document.createElement("div");
	 	var getid=document.getElementsByTagName(tFun1.value);
	//var getid=document.getElementsById(tFun1.value);
	// getid.removeChild(this.parentnode);
	//alert(getid[0].innerHTML);
if((tFun.value==""))
getid[getid.length-1][tChara.value]=tValue.value;
else
getid[getid.length-1][tFun.value][tChara.value]=tValue.value;
	 alert(tFun1.value+"元素属性方法添加成功！");
     };

//删除元素按钮
      bDel.onclick=function()
     {
 //var mybody = document.getElementById("test");
	 var mybody=document.body;
	 //var d = document.createElement("div");
	var getid=document.getElementsByTagName(tFun1.value);
	// getid.removeChild(this.parentnode);
	//alert(getid[0].innerHTML);
mybody.removeChild(getid[getid.length-1]);

	 alert(tFun1.value+"元素删除成功！");
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
	 //var d = document.createElement("div");
	 	var getid=document.getElementsByTagName(tFun1.value);
//	 alert("元素数量："+getid.length);
  
 if((tChara.value=="")&&(tValue.value==""))
  getid[getid.length-1][tFun.value]=function()
   {
    alert("你对"+tFun1.value+"进行了事件操作："+"\n"+tFun.value);
   };
  else
  div[tFun.value][tChara.value]=tValue.value;
  alert("你对"+tFun1.value+"进行了操作："+"\n"+tFun.value+"\n"+tChara.value+"\n"+tValue.value);

  
   };


  
}

</script>
</head>

<body>
js/css测试文档：请根据相关参考帮助手册可供自己学习用.例:对象object/元素标签；方法onclick/style..<br>
对象<input type="text" id="text_fun1" />
方法<input type="text" id="text_fun" />
属性<input type="text" id="text_chara" />
值<input type="text" id="text_value"/><br>
<input type="button" id="b" value="方法事件"/>
<input type="button" id="b_add" value="增加元素"/>
<input type="button" id="b_add2" value="添加属性"/>
<input type="button" id="b_del" value="删除元素"/>
<input type="button" id="b_num" value="查看元素个数"/>
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

