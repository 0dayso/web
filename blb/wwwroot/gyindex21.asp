<%@language=vbscript%>
<%if not session("checkg")="right" then 
response.Redirect "index.asp"  
else
%>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>������ҳ</title>
<meta name="Keywords" content="��������������ҳ,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{font-size:13px;}
.tablecss
{
color:green;border:1px solid green;background-color:whitesmoke;width:100%;text-align:center;
}
.trcsstop
{
color:white;border:5px solid blue;background-color:purple;padding:5px;height:30px;family-face:����;font-size:12px;
}
.trcss
{
color:white;border:5px solid blue;background-color:green;padding:5px;height:30px;family-face:����;font-size:12px;
}
.trover 
{color:white;background-color:steelblue;
border:5px solid blue;padding:5px;height:30px;family-face:����;font-size:12px;}
.top
{
family-face:����;font-size:25px;color:black;background-color:whitesmoke;border:1px solid steelblue;
}
</style>

<script type="text/javascript">

function trover1(e1)
{
var gete=document.getElementById(e1);

gete.className="trover";

}
function trout1(e1)
{
var gete=document.getElementById(e1);

gete.className="trcss";
}


</script>


<body>
<div class="top"><%=session("gyname")%>���𾴵������û�����ã�</div>
<br>
<form name="form1" method="post" action="cp.asp" > 
<input type="submit"  name="Submit" value="������Ʒ"> 
</form>

<!--#include file="conn.asp"-->

<% dim na,d
na=session("gyname")
d="����"
de="�ȴ�����"

exec="select * from cp where gyname='"+na+"'   order by id desc " 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

%> 
<%
dim m,n,n1
rs.pagesize=20 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ

if tatalrecord<1 then
tatalrecord=0
response.write "���ǵ�һ�ε�¼ϵͳ���޷�����Ʒ���뷢����Ʒ���ۣ�������˴�����ֲ�Ʒ�б�"
else

'tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
rs.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���


if nowpage&"x"="x"  then '����ҳ��Ϊ��ʱ�����
nowpage=1
else

if isnumeric(request("page"))=false then
nowpage=1
response.write "<script>alert('�����������Ŷ��');location.href='javascript:history.back()';</script>"


else
nowpage=cint(nowpage) '��ҳ��ת����������
end if
end if


rs.absolutepage=nowpage '��ָ���ƶ�����ǰ��ʾҳ�ĵ�һ����¼
%>


<div class="top">�ҵĶ����б�</div>
<% 
exec2="select * from cp where gyname='"+na+"'  and  way  Like '%"&d&"%' order by id desc " 
set rs2=server.createobject("adodb.recordset") 
rs2.open exec2,conn,1,1 
rs2.pagesize=10 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord2=rs2.recordcount '��ȡ��¼����Ŀ

if tatalrecord2<1 then
tatalrecord2=0
response.write "���ǵ�һ�ε�¼ϵͳ���޶������ж���ʱ�˴�����ʾ�����б�"
else

tatalpages2=rs2.pagecount '��ȡ��ҳ����Ŀ
rs2.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���


if nowpage&"x"="x"  then '����ҳ��Ϊ��ʱ�����
nowpage=1
else

if isnumeric(request("page"))=false then
nowpage=1
response.write "<script>alert('�����������Ŷ��');location.href='javascript:history.back()';</script>"


else
nowpage=cint(nowpage) '��ҳ��ת����������
end if
end if


rs2.absolutepage=nowpage '��ָ���ƶ�����ǰ��ʾҳ�ĵ�һ����¼
%> 
<table class="tablecss" width="100%" border="1" cellspacing="1" cellpadding="0" > 
<tr class="trcsstop"> 
<td  >������</td>
<td  >��Ʒ����</td>
<td >��Ʒ����</td>
<td >��������</td>
<td >��Ʒ����</td>
<td >��Ʒ�ܼ�</td>
<td >ͼƬ����</td>
<td >���۷�ʽ</td>
<td >��Ϣ����</td>
<td >�տʽ</td>
<td >״̬����</td>
<td >����״̬</td>
<td >����ʱ��</td>

</tr><% n=1
 while not rs2.eof and n<=rs2.pagesize%>
<tr  class="trcss" id="<%=rs2("id")%>" onmouseover="trover1('<%=rs2("id")%>') " onmouseout="trout1('<%=rs2("id")%>')"> 
<td ><%=rs2("id")%></td>
<td ><%=rs2("cpname")%></td>
<td ><%=rs2("cpprice")%></td>
<td ><%=rs2("cpearn")%></td>
<td ><%=rs2("cpnum")%></td>
<td ><%=rs2("cpearn")*rs2("cpnum")%></td>
<td ><a href="upindex.asp?id=<%=rs2("id")%>">�ϴ�ͼƬ</a></td>
<td ><%=rs2("how")%></td>
<td ><a href="viewgytxt.asp?id=<%=rs2("id")%>">������Ϣ</a></td>
<td ><a href="gywayadd.asp?id=<%=rs2("id")%>">֪ͨ����</a></td>
<td ><a href="modifysavegy.asp?id=<%=rs2("id")%>">֪ͨ����</a></td>
<td ><%=rs2("now")%></td>
<td ><%=rs2("xtime")%></td>
</tr>
<% n=n+1
rs2.movenext 
wend
end if
%> 
</table>
��<%=tatalrecord2%>�Ŷ��� ��ǰΪ:<%=nowpage%>ҳ  10��/ҳ
<br><br>
<div class="top">�ҵĲ�Ʒ�б�</div>

<% 
exec3="select * from cp where gyname='"+na+"'  and  way not Like '%"&d&"%'  order by id desc " 

set rs3=server.createobject("adodb.recordset") 
rs3.open exec3,conn,1,1 

rs3.pagesize=10 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord3=rs3.recordcount '��ȡ��¼����Ŀ

if tatalrecord3<1 then
tatalrecord3=0
response.write "���ǵ�һ�ε�¼ϵͳ���޲�Ʒ������Ʒ�򷢲���Ʒ��ʱ�˴������ɲ�Ʒ�б�"
else

tatalpages3=rs3.pagecount '��ȡ��ҳ����Ŀ
rs3.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���


if nowpage&"x"="x"  then '����ҳ��Ϊ��ʱ�����
nowpage=1
else

if isnumeric(request("page"))=false then
nowpage=1
response.write "<script>alert('�����������Ŷ��');location.href='javascript:history.back()';</script>"


else
nowpage=cint(nowpage) '��ҳ��ת����������
end if
end if


rs3.absolutepage=nowpage '��ָ���ƶ�����ǰ��ʾҳ�ĵ�һ����¼
%> 

<table class="tablecss" width="100%"  > 
<tr class="trcsstop"> 
<td >������</td>
<td >��Ʒ����</td>
<td >��Ʒ����</td>
<td >��������</td>
<td >ͼƬ����</td>
<td >���۷�ʽ</td>
<td >��Ϣ����</td>
<td >����״̬</td>
<td >���ۿ���</td>
<td>�����޸�</td>
<td >����ʱ��</td>

</tr>
<% n1=1
while not rs3.eof and n1<=rs3.pagesize%>
<tr  class="trcss" id="<%=rs3("id")%>" onmouseover="trover1('<%=rs3("id")%>') " onmouseout="trout1('<%=rs3("id")%>')">
<td ><%=rs3("id")%></td>
<td ><%=rs3("cpname")%></td>
<td ><%=rs3("cpprice")%></td>
<td ><%=rs3("cpearn")%></td>
<td ><a href="upindex.asp?id=<%=rs3("id")%>">�ϴ�ͼƬ</a></td>
<td ><%=rs3("how")%></td>
<td ><a href="viewgytxt.asp?id=<%=rs3("id")%>">�鿴��Ϣ</a></td>
<td ><%=rs3("now")%></td>
<td >Ŀǰ��<%=rs3("other3")%><a href="opensale.asp?id=<%=rs3("id")%>" target="_self">��������</a></td>
<td><a href="netmodify.asp?id=<%=rs3("id")%>&cpname=<%=rs3("cpname")%>&gyname=<%=rs3("gyname")%>" target="_self">�޸�</a></td>
<td ><%=rs3("xtime")%></td>
</tr>




<% n1=n1+1
rs3.movenext 
wend
end if

if tatalpages2<tatalpages3 then
tatalpages=tatalpages3
else 
tatalpages=tatalpages2
end if

if nowpage>tatalpages then

response.write "<script>alert('ҳ������!');location.href='javascript:history.back()';</script>"
end if
%> 
</table>
��<%=tatalrecord3%>����Ʒ ��ǰΪ:<%=nowpage%>ҳ  10��/ҳ

<br>


��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="gyindex.asp?page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="gyindex.asp?page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<input type='text' size='2' value="ҳ��+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='ҳ��+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='gyindex.asp?page='+this.value;">

<%if nowpage<>1 then%>
<a href="gyindex.asp?page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="gyindex.asp?page=<%=tatalpages%>">ĩҳ</a>
<%else%>
ĩҳ
<%end if%>





<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
end if 
end if
%> 






<br><br>
<form name="form1" method="post" action="exit.asp" > 
<input type="submit"  name="Submit" value="�˳�"> 
</form>



