<%
Set myMail=CreateObject("CDO.Message")
myMail.Subject="Sending email with CDO"
myMail.From="858272689@qq.com"
myMail.To="wangyongzhi@163.com"
myMail.TextBody="����QQ858272�������ʼ�"
myMail.Send
set myMail=nothing
%>