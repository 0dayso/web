 <SCRIPT janguage="javascript">
<!--
// Title: JavaScript - FTP log-on script
 
function goFtpSite() {
window.open("ftp://" + document.ftp.login.value + ":" + document.ftp.password.value + "@" + document.ftp.url.value);
}
 
//-->
	  </SCRIPT>

<FORM name=ftp>
  <TABLE width="300" border=0 align=center cellPadding=5 cellSpacing=0>
	<TBODY>
	<TR>
	  <TD align=left width=80><FONT 
		color=#000000><STRONG>��������</STRONG> </FONT></TD>
	  <TD><INPUT name=url onFocus="this.value=&quot;&quot;" 
		value=��������URL��ַ size=22>                      </TD></TR>
	<TR>
	  <TD width="80" align=left><FONT color=#000000><STRONG>�û�����</STRONG></FONT></TD>
	  <TD><INPUT maxLength=22 
		size=22 name=login></TD></TR>
	<TR>
	  <TD width="80" align=left><STRONG>�ܡ��룺</STRONG></TD>
	  <TD><input name="password" type="password" id="password" size="22" maxlength="22"></TD>
	</TR>
	<TR>
	  <TD align=middle colSpan=2><INPUT class=buttom onclick=goFtpSite(); type=button value=" �� ¼ ">&nbsp;&nbsp; 
<INPUT class=buttom type=reset value=" �� ��"></TD></TR></TBODY></TABLE>
</FORM>