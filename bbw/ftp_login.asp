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
		color=#000000><STRONG>服务器：</STRONG> </FONT></TD>
	  <TD><INPUT name=url onFocus="this.value=&quot;&quot;" 
		value=服务器或URL地址 size=22>                      </TD></TR>
	<TR>
	  <TD width="80" align=left><FONT color=#000000><STRONG>用户名：</STRONG></FONT></TD>
	  <TD><INPUT maxLength=22 
		size=22 name=login></TD></TR>
	<TR>
	  <TD width="80" align=left><STRONG>密　码：</STRONG></TD>
	  <TD><input name="password" type="password" id="password" size="22" maxlength="22"></TD>
	</TR>
	<TR>
	  <TD align=middle colSpan=2><INPUT class=buttom onclick=goFtpSite(); type=button value=" 登 录 ">&nbsp;&nbsp; 
<INPUT class=buttom type=reset value=" 重 来"></TD></TR></TBODY></TABLE>
</FORM>