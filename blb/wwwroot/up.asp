<%script language="VB" runat="server"%>
Sub UploadFile(sender As Object, e As EventArgs)

If FileUp.PostedFile.ContentLength = 0 Then
FileInfo.Visible = False
Exit Sub
Else
FileInfo.Visible = True
FDisplay1.Visible = True
End If

FSize.Text ="上传文件大小"+ CStr(FileUp.PostedFile.ContentLength/1024)+"KB"
FName.Text = "已上传文件名:"+FileUp.PostedFile.FileName+"<%br%>"+FName.Text

'写入数据库
on error resume next
dim myconn as sqlconnection
dim mycomm as sqlcommand
dim sql as string
dim id as integer
Dim image,anewimage As System.Drawing.Image
dim width,height,newwidth,newheight as integer
Dim callb As System.Drawing.Image.GetThumbnailImageAbort
myConn=New sqlconnection(ConfigurationSettings.AppSettings("数据库"))
myconn.open()
sql="insert into picture (姓名,班级,介绍,属性) values ('"&request.cookies("dgxyl").values("dgxylname")&"','"&request.cookies("dgxyl").values("dgxylbj")&"','"&trim(request("TextBox1"))&"','"&request("r1")&"')"
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
'保存图片
FileUp.PostedFile.SaveAs( Server.MapPath("\classpic\")&cstr(id)&".jpg" )
'生成缩略图
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

FDisplay.Text = "<%A Target='_blank' HREF='/classpic/"&cstr(id)&".jpg"& "'%>查看上传文件<%/A%>"
FDisplay1.text="<%a href='/picture/default.asp?bj="&cstr(request.cookies("dgxyl").values("dgxylbj"))&"'%>返回<%/a%>"
End Sub
<%/script%>
<%SCRIPT language=JavaScript%>
<%!--
var requestsubmitted=false;
function guestbook_Validator(theForm)
{
//检查是否从新提交
if (requestsubmitted==true){
  alert("你已经提交了留言，请等待服务器应答！");
  return(false);
}
requestsubmitted=true;

return (true);
}
//--%>
<%/SCRIPT%>
<%Html%>
<%Body BgColor=White%>
<%H3 align="center"%>请正确填写下面各项<%/h3%>
<%Hr%><%/H3%>
<%Div id="FileInfo" Visible="False" runat="server"%>
<%Asp:Label id="FSize" runat="server"/%><%br%>
<%Asp:Label id="FName" runat="server"/%><%br%>
<%Asp:Label id="FDisplay" runat="server"/%>
<%Asp:Label id="FDisplay1" runat="server"/%>
<%/Div%>
<%Form Enctype="multipart/form-data" onsubmit="return guestbook_Validator(this)" runat="server"%>
上传文件
<%Input Type="File" id="FileUp" runat="server" size="20"%><%br%>
图片属性：<%input type="radio" value="<%%=request.cookies("dgxyl").values("dgxylbj")%%>" name="R1" checked%>本班<%input type="radio" value="全校" name="R1"%>全校(本班则只在本班显示，全校则在全校显示)<%P%>
图片说明：<%br%>
<%asp:TextBox id="TextBox1" runat="server" Width="233px" Height="141px"%>
<%/asp:TextBox%>
        <%asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请输入图片说明"%>
<%/asp:RequiredFieldValidator%><%br%>
<%Asp:button id="Upload" OnClick="UploadFile" Text="上传图片" runat="server"/%>
<%/form%>
<%/Body%>
<%/Html%>
