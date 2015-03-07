<form name="form" method="post" action="upfile.asp" enctype="multipart/form-data">
<input type="hidden" name="filepath" value="uploadimg">
<input type="hidden" name="act" value="upload">
<input type="file" name="file1" size=40>
<input type="submit" class=button name="Submit" value="上传图片" onclick="parent.document.forms[0].Submit.disabled=true">类型：gif,jpg，限制：100K
</form>