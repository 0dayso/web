<!--include file="formf.asp"-->
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�������-�����ַ��Ϣ����-�����ַ��Ϣ��</title>
<meta name="Keywords" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������"/>
<meta name="Description" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ�����������������������������ӵ�������ַ�������Զ�����ַ������"/>
<link href="bbw.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class="h">
  &nbsp;���<font size="5px"> ��ַ��Ϣ�� http://bbw.svfree.net <font size="1px"></font>  &nbsp; &nbsp; &nbsp;  ��ѷ�����ַ��Ϣ</font>
</div>

<div class="t">
<div align="justify"><marquee scrollamount="2" direction="left">�����⣬Ҫ�������Ұ����ַ��Ϣ�������Է���������ַ����Ϣ��</marquee></div></div>
</div>
<div class="m">
<div class="ml">
<div class="mlt">
<div class="top">�����б�</div>

<font size="2px">
&nbsp; &nbsp; &nbsp;<a href="sendnet.asp" target="_parent">������ַ</a><br>
&nbsp; &nbsp; &nbsp;<a href="sendcontent.asp" target="_parent">��������</a><br>
&nbsp; &nbsp; &nbsp;<a href="information.asp" target="_parent">��Ϣ����</a><br>
&nbsp; &nbsp; &nbsp;<a href="main.asp?page=1" target="_parent">��Ϣ���</a><br>
&nbsp; &nbsp; &nbsp;<a href="student.asp?na=��������" target="_parent">����ѧϰ</a><br>
&nbsp; &nbsp; &nbsp;<a href="job.asp" target="_parent">���빤��</a><br>
&nbsp; &nbsp; &nbsp;<a href="marriage.asp" target="_parent">�������</a><br>
&nbsp; &nbsp; &nbsp;<a href="living.asp" target="_parent">��������</a>
</font>
</div>
<hr>
<div class="mld">
<div class="top">�������</div>
<font size="2px">
&nbsp; &nbsp;<a href="http://www.bailianbai.com/jscss.asp" >bbw_js/css����</a><br>
&nbsp; &nbsp;<input type="button" name="bt" onclick="window.showModalDialog('f.asp','scrollbars=yes;help=no;status=no;dialogTop=25; dialogLeft=0;dialogHeight=50px')" value="�������ҳ��">
</font>
</div>
</div>

<div class="mr">

<table border="0" width="100%"  bgcolor="blue.jpg">
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=������&c=2" > 
<input type="submit" name="Submit" value="�������רҵ��"> 
 </form> 
</td>


</table>










<table border="0" width="100%" bgcolor="whitesmoke">
<!--#include file="conn.asp"--> 
<%  na=request("na")
c=request("c")
if c="1" or c="2" then
%>

<% 

exec="select * from aab where title='"+na+"' order by id desc "
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 


%> 







<%
dim m,n
rs.pagesize=10 '����һҳ��ʾ�ļ�¼��Ŀ
tatalrecord=rs.recordcount '��ȡ��¼����Ŀ
if tatalrecord<1 then
tatalrecord=0
response.write "�㻹û������Ϣ�������������б�"
else
tatalpages=rs.pagecount '��ȡ��ҳ����Ŀ
rs.movefirst
nowpage=request("page") '��request��ȡ��ǰҳ����ע��page���Լ�����ı������Ǻ���
if nowpage&"x"="x" then '����ҳ��Ϊ��ʱ�����
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
<tr>
<th  width="25%">����ʱ��</th>
<th  width="45%">��Ϣ����</th>
<th  width="10%">��Ϣ���</th>
<th  width="10%">����</th>
<th  width="10%">����</th>
</tr>
<%
n=1
while not rs.eof and n<=rs.pagesize%>
<tr>
<td width="25%"><%=rs("xhtime")%></td>
<td width="45%"><%=rs("name")%></td>
<td width="10%"><%=rs("title")%></td>
<td width="10%"><a href="view.asp?id=<%=rs("id")%>">�鿴</a></td>
<td width="10%"><a href="del2.asp?id=<%=rs("id")%>">ɾ��</a></td>
</tr>


<%n=n+1
rs.movenext '��ʾҳ�������
wend
end if
%>

&nbsp; &nbsp; &nbsp;��:<%=tatalpages%>ҳ ��ǰΪ:<%=nowpage%>ҳ
<%if nowpage>1 then%>
<a href="student.asp?na=<%=na%>&c=1&page=<%=nowpage-1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%>
<%for k=1 to tatalpages%>

<%next%>
<%if nowpage < tatalpages then%>
<a href="student.asp?na=<%=na%>&c=1&page=<%=nowpage+1%>">��һҳ</a>
<%else%>
��һҳ
<%end if%> 
<input type='text' size='2' value="ҳ��+Enter" onfocus=" javascript:this.value='';"
onfocusout=" javascript:this.value='ҳ��+Enter';" style='height: 18px; width:75;color:DarkGray ; border:1px solid #FFCC99' onkeydown="javascript: if(event.keyCode==13)location='student.asp?na=<%=na%>&c=1&page='+this.value;">

<%if nowpage<>1 then%>
<a href="student.asp?na=<%=na%>&c=1&page=<%=1%>"> ��ҳ</a>
<%else%>
��ҳ
<%end if%>
<%if nowpage<>tatalpages then %>
<a href="student.asp?na=<%=na%>&c=1&page=<%=tatalpages%>">ĩҳ</a>
<%else%>
ĩҳ
<%end if%>

<%if c="1" then%>
<table border="0" width="100%"  bgcolor="blue.jpg">
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=������ѧ&c=1" > 
<input type="submit" name="Submit" value="��ѧ��"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=����Ӣ��&c=1" > 
<input type="submit" name="Submit" value="Ӣ����"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=������ѧ&c=1" > 
<input type="submit" name="Submit" value="��ѧ��"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=������ʷ&c=1" > 
<input type="submit" name="Submit" value="��ʷ��"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=��������&c=1" > 
<input type="submit" name="Submit" value="������"> 
 </form> 
</td>

</table>


<% 
else if c="2" then %>
<table border="0" width="100%"  bgcolor="blue.jpg">
<td><form name="form1" method="post" action="student.asp?na=��������&c=2" > 
<input type="submit" name="Submit" value="��������������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=��������&c=2" > 
<input type="submit" name="Submit" value="��������������"> 
 </form> 
</td>
<td><form name="form1" method="post" action="student.asp?na=������&c=2" > 
<input type="submit" name="Submit" value="������ƹ�����"> 
 </form> 
</td>
</table>

<% 
if rs.eof and rs.bof then 
response.write("��ʱû�м�¼") 
else 
do while not rs.eof 
%> 

<% 

rs.movenext 
loop 
end if 


end if 
end if 
if nowpage>tatalpages then

response.write "<script>alert('ҳ������!');location.href='javascript:history.back()';</script>"
end if
%> 
</table> 


<% 
rs.close 
set rs=nothing 
conn.close 
set conn=nothing 
%> 
</table>



<%

end if%>

<br>
<input type="button" value="������ҳ" onClick="location.href='index.asp';">

</div>
</div>

<div class="footer">
�����ַ��Ϣ�� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>
</div>

</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none"><div style="display:none"><div style="display:none">