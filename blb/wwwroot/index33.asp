<%@LANGUAGE="JAVASCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������-��������ȫ���̼���Ʒ�����г�����ϵͳ</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�����ϵͳ,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�����ϵͳ,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�����ϵͳ,���Ͻ���,�����г�����ϵͳ,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,����,����ˡ�"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />
<style type="text/css" >
span{font-size:12px;color:red;background-color:yellow;padding:2px;}
</style>
<script type="text/javascript">
function on1()
{
document.getElementById("sp1").style.display=""
}
function out1()
{
document.getElementById("sp1").style.display="none"
}

function on2()
{
document.getElementById("sp2").style.display=""
}
function out2()
{
document.getElementById("sp2").style.display="none"
}
</script>
</head>


<body>
<table border="0" width="960" align="center" bgcolor="whitesmoke" color="white"><td><div align="justify" style="display: block; font-size: 12px;"><marquee scrollamount="2" direction="left">
            ������-��������ȫ���̼���Ʒ�����г�����ϵͳ  @�����̽� ʱʱ���� </div></td></table>
<br><br><br><br><br>
<div class="main">
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <tr><td>
<table border="0">
<tr>
<td  class="tdall" id="td1" onmouseover="over1()"  onclick="all1()" style="width:120px;">
����̼�
</td>
<td  class="tdall" id="td2" onmouseover="over2()" onclick="all2()" style="width:120px;">
�����̼�
</td>
<td  class="tdall" id="td3" onmouseover="over3()" onclick="all3()" style="width:120px;">
�����¼
</td>
</tr>
</table>

<div class="maincss" id="d2" >
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <br>
<form name="form1" method="post" action="checkcg.asp"> <tr><th align="center" height="30px">����̼ҵ�¼</th></tr>
<tr><td align="center" height="30px">�̼����� <input type="text" name="name" class="editbox" onfocus="on1()" onblur="out1()" id="text1" size="15"><br><span id="sp1" style="position:fixed;display:none;">����������̼�����</span> </td></tr>
<tr><td align="center" height="30px">Ȩ������ <input type="password" name="password" class="editbox" id="text1" size="15">
<tr><td align="center" height="30px">��֤��&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="���ͼƬ���Ը�����֤��" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit" class="but" value="��¼"> 
<input type="reset" name="Submit2"  class="but" value="����"> <a href="cgreg.asp">ע��</a></td></tr>
</form></table>
</div>

<div class="maincss" id="d21" style="display:none;">
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <br>
<form name="form1" method="post" action="checkgy.asp"> <tr><th align="center" height="30px">�����̼ҵ�¼</th></tr>
<tr><td align="center" height="30px">�̼����� <input type="text" name="name" onfocus="on2()" onblur="out2()" class="editbox" id="text2" size="15"><br><span id="sp2" style="position:fixed;display:none;">�����������̼�����</span> </td></tr>
<tr><td align="center" height="30px">Ȩ������ <input type="password" name="password" class="editbox" id="text1" size="15">
</td></tr> 
<tr><td align="center" height="30px">��֤��&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="���ͼƬ���Ը�����֤��" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit"  class="but" value="��¼"> 
<input type="reset" name="Submit2"  class="but" value="����"> <a href="gyreg.asp">ע��</a></td></tr>
</form></table>
</div>

<div class="maincss" id="d31" style="display:none;">
<table width="350" border="0" cellspacing="0" cellpadding="0" align="center" > <br>
<form name="form1" method="post" action="checkadmin.asp"> <tr><th align="center" height="30px">����Ա��¼</th></tr>
<tr><td align="center" height="30px">����Ա <input type="text" name="name" class="editbox" id="text1" size="15"><br> </td></tr>
<tr><td align="center" height="30px">&nbsp;&nbsp;���� <input type="password" name="password" class="editbox" id="text1" size="15"></td></tr> 
<tr><td align="center" height="30px">��֤��&nbsp;&nbsp;<img src="retest.asp" onclick="reabc(this);" title="���ͼƬ���Ը�����֤��" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
</td></tr> 
<tr><td align="center" height="30px"><input type="submit" name="Submit"  class="but" value="��¼"> 
<input type="reset" name="Submit2"  class="but" value="����"> </td></tr>
</form></table>
</div>
</td></tr>
<table>



 </div>
<div class="qq">
<table border="0" width="500" heigh="15" align="center" bgcolor="whitesmoke" color="white">
<tr>
<td style="width:80px;font-size:12px;">
���ڰ�����</td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
����˵��</td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
����֧��</td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
������v1.0</td><td style="width:3px;font-size:12px;"><div class="linex"></div></td>
<td style="width:80px;font-size:12px;">
<a target=blank href=tencent://message/?uin=858272689&Site=������&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a></td><td style="width:3px;"><div class="linex"></div></td>
<td style="width:100px;font-size:12px;">
ά�����԰汾</td><td style="width:3px;font-size:12px;"><div class="linex"></div></td>
</td>
</tr>
<table>
</div>
</div>

<body>
</body>
</html>
