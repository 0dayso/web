
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>asp�����ĵ�</title>
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
//�鿴Ԫ������
      bNum.onclick=function()
     {
	 var mybody=document.body;
	 //var d = document.createElement("div");
	 	var getid=document.getElementsByTagName(tFun1.value);

	 alert("Ԫ��������"+getid.length);
     };

//�������Է���
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
	 alert(tFun1.value+"Ԫ�����Է�����ӳɹ���");
     };

//ɾ��Ԫ�ذ�ť
      bDel.onclick=function()
     {
 //var mybody = document.getElementById("test");
	 var mybody=document.body;
	 //var d = document.createElement("div");
	var getid=document.getElementsByTagName(tFun1.value);
	// getid.removeChild(this.parentnode);
	//alert(getid[0].innerHTML);
mybody.removeChild(getid[getid.length-1]);

	 alert(tFun1.value+"Ԫ��ɾ���ɹ���");
     };

//����Ԫ�ذ�ť
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
	 alert(tFun1.value+"Ԫ�����ӳɹ���");
     };
//����Ч����ť
bInform.onclick=function()
  {
   var mybody=document.body;
	 //var d = document.createElement("div");
	 	var getid=document.getElementsByTagName(tFun1.value);
//	 alert("Ԫ��������"+getid.length);
  
 if((tChara.value=="")&&(tValue.value==""))
  getid[getid.length-1][tFun.value]=function()
   {
    alert("���"+tFun1.value+"�������¼�������"+"\n"+tFun.value);
   };
  else
  div[tFun.value][tChara.value]=tValue.value;
  alert("���"+tFun1.value+"�����˲�����"+"\n"+tFun.value+"\n"+tChara.value+"\n"+tValue.value);

  
   };


  
}

</script>
</head>

<body>
js/css�����ĵ����������زο������ֲ�ɹ��Լ�ѧϰ��.��:����object/Ԫ�ر�ǩ������onclick/style..<br>
����<input type="text" id="text_fun1" />
����<input type="text" id="text_fun" />
����<input type="text" id="text_chara" />
ֵ<input type="text" id="text_value"/><br>
<input type="button" id="b" value="�����¼�"/>
<input type="button" id="b_add" value="����Ԫ��"/>
<input type="button" id="b_add2" value="�������"/>
<input type="button" id="b_del" value="ɾ��Ԫ��"/>
<input type="button" id="b_num" value="�鿴Ԫ�ظ���"/>
<a href="http://bbw.svfree.net">�����ַ��Ϣ��</a>�ر�������http://bbw.svfree.net
<div id="add_div" style="width:200px;height:200px;top:20px;left:20px;background:steelblue;">
<div id="text_div" style="width:100px;height:100px;top:40px;left:40px;background:green;">
ԭʼ<br> 
��100;��100;�Ͼ�40;<br>
���40;<br>������ɫ��
</div>
ԭʼ<br> 
��200;��200;�Ͼ�20;<br>
���20;����ǳ����
</div>
</body>
</html>

