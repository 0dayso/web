<html>
<body >
<center>
<br><br>
<h3><font face="Verdana">.NET->ѡ��ؼ�!</font></h3>
<br><br><br>
</center>
<form method=post runat=server>
<hr width=600 size=1 noshade>

<center>
<asp:ValidationSummary ID="valSum" runat="server" 
HeaderText="�������д���������:"
DisplayMode="SingleParagraph"
Font-Name="verdana" 
Font-Size="12" 
/>
<p>
<!-- ���ÿ���Ϣ -->
<table border=0 width=600>
<tr>
<td colspan=3>
<center>
<font face=Arial size=2><b>���ÿ���Ϣ</b></font>
</center>
</td>
</tr>
<tr>
<td align=right>
<font face=Arial size=2>���ÿ�����:</font>
</td>
<td>
<!--�г�ѡ������-->
<ASP:RadioButtonList id=ccType Font-Name="Arial" RepeatLayout="Flow" runat=server>
<asp:ListItem>����һ��ͨ</asp:ListItem>
<asp:ListItem>ĵ����</asp:ListItem>
</ASP:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator id="ccTypeReqVal"
ControlToValidate="ccType" 
ErrorMessage="���ÿ�����. "
Display="Static"
InitialValue=""
Font-Name="Verdana" Font-Size="12"
runat=server>
*
</asp:RequiredFieldValidator>
</td>
</tr>
</table>
<p>
<input runat="server" type=submit value="�ύ">
<p>
<hr width=600 size=1 noshade>
</form>
</center>
</body>
</html>
