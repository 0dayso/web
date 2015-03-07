<html>
<body >
<center>
<br><br>
<h3><font face="Verdana">.NET->选择控件!</font></h3>
<br><br><br>
</center>
<form method=post runat=server>
<hr width=600 size=1 noshade>

<center>
<asp:ValidationSummary ID="valSum" runat="server" 
HeaderText="你必须填写下面的内容:"
DisplayMode="SingleParagraph"
Font-Name="verdana" 
Font-Size="12" 
/>
<p>
<!-- 信用卡信息 -->
<table border=0 width=600>
<tr>
<td colspan=3>
<center>
<font face=Arial size=2><b>信用卡信息</b></font>
</center>
</td>
</tr>
<tr>
<td align=right>
<font face=Arial size=2>信用卡类型:</font>
</td>
<td>
<!--列出选择内容-->
<ASP:RadioButtonList id=ccType Font-Name="Arial" RepeatLayout="Flow" runat=server>
<asp:ListItem>招行一卡通</asp:ListItem>
<asp:ListItem>牡丹卡</asp:ListItem>
</ASP:RadioButtonList>
</td>
<td>
<asp:RequiredFieldValidator id="ccTypeReqVal"
ControlToValidate="ccType" 
ErrorMessage="信用卡类型. "
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
<input runat="server" type=submit value="提交">
<p>
<hr width=600 size=1 noshade>
</form>
</center>
</body>
</html>
