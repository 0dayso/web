<%
Set myMail=CreateObject("CDO.Message")
myMail.Subject="Sending email with CDO"
myMail.From="858272689@qq.com"
myMail.To="wangyongzhi@163.com"
myMail.TextBody="这是QQ858272发来的邮件"
myMail.Send
set myMail=nothing
%>