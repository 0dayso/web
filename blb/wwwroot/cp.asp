<%@language=vbscript%>
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>��Ʒ ������ ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
window.onload=function()
{

var showp=document.getElementById("showp");
var small=document.getElementById("small");
showp.onclick=function()
{
showp.style.width="100%";
}
small.onclick=function()
{
showp.style.width="250";
}
}

</script>

<style type="text/css">

span{font-size:12px;color:red;background-color:yellow;padding:2px;}

</style>
</head>
<body>




<div class="allc">
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
������Ĳ�Ʒ/��Ʒ��
<form name="form1" method="post" action="gy_newcp.asp">
<tr><td>
<label >��Ʒ���ƺ��ͺ�<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()"  /><a href="upindex_cp.asp" >�ϴ�ͼƬ</a><br></label></td></tr>
<tr><td>
<label>�ϴ����ͼƬԤ��&nbsp;&nbsp;</label>
<label id="small" style="color:blue;">�����ͼ�ı䵽�ʺϴ��ڴ�С</label>
</td></tr>
<tr><td>
<img src="<%=request("path")%>"  id="showp" /></td></tr>
<tr><td>
<input type="hidden" class="editbox"  name="path" id="path" value="<%=request("path")%>"/></td></tr>
<tr><td>
<label>��Ʒ�ο�����&nbsp;&nbsp;&nbsp;<input type="text" class="editbox"  name="cpprice" id="cpp"/></label></td></tr>
<tr><td>
<label style="color:red;">��Ʒ���㵥��&nbsp;&nbsp;&nbsp;<input type="text" onfocus="on()" onblur="out()"class="editbox" id="cpe"  name="cpearn" /></label><span id="sp1" style="position:fixed;display:none;">��ֵԽ�͹��������Խ��</span></td></tr><tr><td>

���۷�ʽ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="how" >
<option value="��������">��������</option>
<option value="���л��">���л��</option>
</select><br>

<input type="submit" class="but" value="�ύ"/>
<input type="reset" class="but" name="Submit2" value="���"/>
<input type="button" class="but" value="����" onClick="location.href='gyindex.asp';">
</td></tr>
</form>
</table>
</div>



</body>
</html>


<% end if %>