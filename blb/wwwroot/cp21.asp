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
<style type="text/css" >
.allc {
    font-family: "tahoma", "����"; /*www.52css.com*/
    font-size:9pt; color: #003399;
    border: 1px #003399 solid;
    color:#006699;
    border-bottom: #93bee2 1px solid;
    border-left: #93bee2 1px solid;
    border-right: #93bee2 1px solid;
    border-top: #93bee2 1px solid;
    background-image:url(../images/bluebuttonbg.gif);
    background-color: #e8f4ff;
    cursor: hand;
    font-style: normal ;
    padding:20px;
    width:350px;
   
	}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="����";}
span{font-size:12px;color:red;background-color:yellow;padding:2px;}
</style>
</head>
<body>
<script type="text/javascript">
function c()
{

var v=document.getElementById("t1").value
var l=v.length;
var ml=0;
for(i=0;i<l;i++)
{
//if((v[i] & 0) == 0)
if(!isNaN(v[i]))
{
ml++;
}
}
if (ml>8){
document.getElementById("t1").value="";
alert("������಻�ɰ�������8�����֣���Ѳ�Ʒ�������������ٲ���������!");}
}

function on()
{
document.getElementById("sp1").style.display=""
}
function out()
{
document.getElementById("sp1").style.display="none"
}
</script>



<fieldset>
<legend>�Ǽ���Ʒ��Ϣ</legend>
<div class="allc">
<table width="250" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
������Ĳ�Ʒ/��Ʒ��
<form name="form1" method="post" action="gy_newcp.asp">
<tr><td>
<label >��Ʒ����<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()" maxlength=""/></label></td></tr><tr><td>
<label>��Ʒ����<input type="text" class="editbox"  name="cpprice" /></label></td></tr><tr><td>
<label>��������<input type="text" onfocus="on()" onblur="out()"class="editbox"  name="cpearn" /></label><br><span id="sp1" style="position:fixed;display:none;">����������ָ�ܸ��������˵ĵ��۽��</span></td></tr><tr><td>
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