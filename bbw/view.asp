
<% dim id
id=request.querystring("id")

if id="" then
response.write"id error"

else if isnumeric(request("id"))=false then
Response.Write "ID�ⲻ����������Ŷ!"
else
%>
<!--include file="formf.asp"-->
<html>
<head>


<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>�鿴��Ϣ��������-�����ַ��Ϣ����-�����ַ��Ϣ��</title>
<meta name="Keywords" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������"/>
<meta name="Description" content="�����ַ��Ϣ��,��ַ��Ϣ����,�����ַ��Ϣ������ҳ������ַ��Ϣ�����������ѧϰ����������������,�������,Ѱ�����,���,����,����,���,��ַ����,�Զ�����ַ�����������������������������������վ�����������������������������ӵ�������ַ�������Զ�����ַ������"/>
<link href="bbw.css" rel="stylesheet" type="text/css">

</head>
<body>
<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=slide&amp;img=0&amp;uid=584305" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript"> 
	document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
</script>
<!-- Baidu Button END -->

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

<div class="tm">

<!--#include file="conn.asp"--> 

<% 
exec="select * from aab where id="&request.querystring("id") 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

If rs.EOF Then 
response.redirect "../error.asp?msg=û�����������ļ�¼������������" 
end if 

%>

<%

 response.write "���⣺"&rs("name")&"<hr>" 
 response.write "���"&rs("title")&"<hr>" 
 response.write "���ݣ�"&rs("content")&"<hr>" 
%>

<a href="modify.asp?id=<%=rs("id")%>" target="_self">�ظ�</a>&nbsp;&nbsp;&nbsp;
<a href="del2f.asp?id=<%=rs("id")%>" target="_self">�޸�</a>&nbsp;&nbsp;&nbsp;

<a href="del2.asp?id=<%=rs("id")%>">ɾ��</a>


</div>
<br>
<div class="tm">

<%


 dim page,pagecount,thispage,linenum,allline  
            if rs("da")<>"" then

            const pageline=10 'ÿҳ��ʾ5�� 

            linenum=split(rs("da"),"<hr>") '����Ϊ�����ַ���<br>��ǵĸ���  
            allline=ubound(linenum)+1 'ȫ��<br>(���б��)����  
            pagecount=int(allline/pageline)+1 '������ҳ��  
            page=request("page")  

 if isempty(page)  then  
             thispage=1  
            else  
             thispage=cint(page)  
            end if  

           ' response.write "<b>"&rs("da")&"</b><hr>"  
            for i=0 to allline-1  
            if i+1>thispage*pageline-pageline and i<thispage*pageline then  
             response.write ""&linenum(i)&"<br><hr>" '�����ҳ�������  
            end if  

            next  
            response.write "<br><hr>"  
            response.write "<p align='center'>�ܹ�"&allline&"�� "&pagecount&"ҳ ÿҳ"&pageline&"��"  
            for i=1 to pagecount  
            if thispage=i then  
             response.write ""&i&" "  
            else  
            response.write "<a href='view.asp?id="&id&"&page="&i&"'>"&i&"</a> "  
            '������з�ҳ����  
            end if  
            next  
     end if
            %> 
<br>
<input type="button" value="����" onClick="location.href='javascript:history.back()';">
<input type="button" value="��ҳ" onClick="location.href='index.asp';">
<input type="button" value="������Ϣ" onClick="location.href='sendcontent.asp';">



</div>

<%
response.write"<br><br><div class='center'><a href='http://bbw.svfree.net'>�����ַ��Ϣ��http://bbw.svfree.net</a></div>"

%>
</div>
</div>
</div>
<div class="footer">
�����ַ��Ϣ�� 2012.8 v2.0  <script language="JavaScript" src="http://www.3v.cm/count.asp?id=bbw"></script>
<a target=blank href=tencent://message/?uin=858272689&Site=�����ַ��Ϣ��&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:858272689:1 alt="���µ�����"></a>
</div>
<% 
end if
end  if %>
</body>
</html><div style="display:none">
<div style="display:none"><div style="display:none"><div style="display:none"><div style="display:none">