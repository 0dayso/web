<%script language="VB" runat="server"%>
Sub UploadFile(sender As Object, e As EventArgs)

If FileUp.PostedFile.ContentLength = 0 Then
FileInfo.Visible = False
Exit Sub
Else
FileInfo.Visible = True
FDisplay1.Visible = True
End If

FSize.Text ="�ϴ��ļ���С"+ CStr(FileUp.PostedFile.ContentLength/1024)+"KB"
FName.Text = "���ϴ��ļ���:"+FileUp.PostedFile.FileName+"<%br%>"+FName.Text

'д�����ݿ�
on error resume next
dim myconn as sqlconnection
dim mycomm as sqlcommand
dim sql as string
dim id as integer
Dim image,anewimage As System.Drawing.Image
dim width,height,newwidth,newheight as integer
Dim callb As System.Drawing.Image.GetThumbnailImageAbort
myConn=New sqlconnection(ConfigurationSettings.AppSettings("���ݿ�"))
myconn.open()
sql="insert into picture (����,�༶,����,����) values ('"&request.cookies("dgxyl").values("dgxylname")&"','"&request.cookies("dgxyl").values("dgxylbj")&"','"&trim(request("TextBox1"))&"','"&request("r1")&"')"
Mycomm=New sqlcommand(sql,myconn)
mycomm.executenonquery()
myconn.close()

Dim myCommand As New SqlCommand("select top 1 id from picture order by id desc", myConn)
myCommand.Connection.Open()
Dim myReader As SqlDataReader=mycommand.executereader()
if myReader.Read() then
id=myReader("id")
end if
myconn.close()
'����ͼƬ
FileUp.PostedFile.SaveAs( Server.MapPath("\classpic\")&cstr(id)&".jpg" )
'��������ͼ
image=System.Drawing.Image.FromFile(Server.MapPath("/classpic/"+cstr(id)+".jpg"))
width=image.Width
height=image.height
if width%>height then
newwidth=250
newheight=image.height/image.Width*newwidth
else
newheight=250
newwidth=image.Width/image.height*newheight
end if
response.write("id="+cstr(id)+"width="+cstr(Width)+";height="+cstr(height)+"  ")
response.write("newwidth="+cstr(newwidth)+";newheight="+cstr(newheight)+"<%br%>")

aNewImage=image.GetThumbnailImage(newwidth,newheight,callb,new System.IntPtr())
aNewImage.Save(Server.MapPath("/smallpic/"+cstr(id)+".jpg"))
image.Dispose()


Dim FileSplit() As String = Split( FileUp.PostedFile.FileName, "\" )
Dim FileName As String = FileSplit(FileSplit.Length-1)
Dim Exts() As String = Split( FileName, "." )
Dim Ext As String = LCase(Exts(Exts.Length-1))

FDisplay.Text = "<%A Target='_blank' HREF='/classpic/"&cstr(id)&".jpg"& "'%>�鿴�ϴ��ļ�<%/A%>"
FDisplay1.text="<%a href='/picture/default.asp?bj="&cstr(request.cookies("dgxyl").values("dgxylbj"))&"'%>����<%/a%>"
End Sub
<%/script%>
<%SCRIPT language=JavaScript%>
<%!--
var requestsubmitted=false;
function guestbook_Validator(theForm)
{
//����Ƿ�����ύ
if (requestsubmitted==true){
  alert("���Ѿ��ύ�����ԣ���ȴ�������Ӧ��");
  return(false);
}
requestsubmitted=true;

return (true);
}
//--%>
<%/SCRIPT%>
<%Html%>
<%Body BgColor=White%>
<%H3 align="center"%>����ȷ��д�������<%/h3%>
<%Hr%><%/H3%>
<%Div id="FileInfo" Visible="False" runat="server"%>
<%Asp:Label id="FSize" runat="server"/%><%br%>
<%Asp:Label id="FName" runat="server"/%><%br%>
<%Asp:Label id="FDisplay" runat="server"/%>
<%Asp:Label id="FDisplay1" runat="server"/%>
<%/Div%>
<%Form Enctype="multipart/form-data" onsubmit="return guestbook_Validator(this)" runat="server"%>
�ϴ��ļ�
<%Input Type="File" id="FileUp" runat="server" size="20"%><%br%>
ͼƬ���ԣ�<%input type="radio" value="<%%=request.cookies("dgxyl").values("dgxylbj")%%>" name="R1" checked%>����<%input type="radio" value="ȫУ" name="R1"%>ȫУ(������ֻ�ڱ�����ʾ��ȫУ����ȫУ��ʾ)<%P%>
ͼƬ˵����<%br%>
<%asp:TextBox id="TextBox1" runat="server" Width="233px" Height="141px"%>
<%/asp:TextBox%>
        <%asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="������ͼƬ˵��"%>
<%/asp:RequiredFieldValidator%><%br%>
<%Asp:button id="Upload" OnClick="UploadFile" Text="�ϴ�ͼƬ" runat="server"/%>
<%/form%>
<%/Body%>
<%/Html%>
