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
<style type="text/css">

span{font-size:12px;color:red;background-color:yellow;padding:2px;}

</style>
</head>
<body>




<fieldset>
<legend>�Ǽ���Ʒ��Ϣ</legend>
<div class="allc">
<table width="250" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
������Ĳ�Ʒ/��Ʒ��
<form name="form1" method="post" action="gy_newcp.asp">
<tr><td>
<label >��Ʒ����<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()" maxlength=""/></label></td></tr><tr><td>
<label>�ο�����<input type="text" class="editbox"  name="cpprice" /></label></td></tr><tr><td>
<label style="color:red;">���㵥��<input type="text" onfocus="on()" onblur="out()"class="editbox"  name="cpearn" /></label><span id="sp1" style="position:fixed;display:none;">��ֵԽ�͹��������Խ��</span></td></tr><tr><td>
���۷�ʽ<select name="how" >
<option value="��������">��������</option>
<option value="���л��">���л��</option>
</select><br><br>
<input type="submit" class="but" value="�ύ"/>
<input type="reset" class="but" name="Submit2" value="���"/>
<input type="button" class="but" value="����" onClick="location.href='javascript:history.back()';">
</td></tr>
</form>
</table>
</div>
</fieldset>


</body>
</html>


<% end if %>