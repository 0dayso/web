
<%if not session("checked")="yes" then 
response.Redirect "index.asp"  
else
%>
<html>

<!--#include file="upload.inc"-->
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>产品 百联百 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<script src="blb.js" type="text/javascript"></script>
<link href="blb.css" rel="stylesheet" type="text/css" />

<style type="text/css">

span{font-size:12px;color:red;background-color:yellow;padding:2px;}

</style>
</head>
<body>
<script>
parent.document.forms[0].Submit.disabled=false;
</script>
<form name="form" method="post" action="cp_cp.asp" enctype="multipart/form-data">
<input type="hidden" name="filepath" value="uploadimg">
<input type="hidden" name="act" value="upload">
<input type="file" name="file1" size=40>
<input type="submit" class=button name="Submit" value="上传图片">类型：gif,jpg，限制：100K 提示：上传产品图片后不可修改！如果没考虑好，可以发布后再上传。图片内容需审核
</form>

<%
dim upload,file,formName,formPath,iCount,filename,fileExt
set upload=new upload_5xSoft ''建立上传对象
formPath=upload.form("filepath")
''在目录后加(/)
if right(formPath,1)<>"/" then formPath=formPath&"/" 
response.write "<body>"
iCount=0
for each formName in upload.file ''列出所有上传了的文件
set file=upload.file(formName)     ''生成一个文件对象
if file.filesize<100 then
        response.write "请选择你要上传的文件　[ <a href=# onclick=history.go(-1)>重新上传</a> ]"
 response.end
end if
    if file.filesize>100*1000 then
        response.write "文件大小超过了限制100K　[ <a href=# onclick=history.go(-1)>重新上传</a> ]"
       response.end
end if
fileExt=lcase(right(file.filename,4))
uploadsuc=false
Forum_upload="gif,jpg,png"
Forumupload=split(Forum_upload,",")
for i=0 to ubound(Forumupload)
       if fileEXT="."&trim(Forumupload(i)) then
       uploadsuc=true
       exit for
       else
       uploadsuc=false
       end if
next
if uploadsuc=false then
        response.write "文件格式不正确　[ <a href=# onclick=history.go(-1)>重新上传</a> ]"
       response.end
end if
randomize
ranNum=int(90000*rnd)+10000
filename=formPath&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&ranNum&fileExt
if file.FileSize>0 then            ''如果 FileSize > 0 说明有文件数据
     file.SaveAs Server.mappath(FileName)      ''保存文件
       for i=0 to ubound(Forumupload)
           if fileEXT="."&trim(Forumupload(i)) then
            response.write "<script>parent.form_name.cn_content.value+='[img]"&FileName&"[/img]'</script>"
           exit for
           end if
       next
iCount=iCount+1
end if
set file=nothing
next
set upload=nothing     ''删除此对象
Htmend iCount&" 个文件上传结束!"
sub HtmEnd(Msg)
set upload=nothing
%> 



<fieldset>
<legend>登记商品信息</legend>
<div class="allc">
<table width="280" border="0" cellspacing="0" cellpadding="0" align="center" style="font-size:12px;" >
发布你的产品/商品！











<form name="form1" method="post" action="gy_newcp.asp">
<tr><td>
<label >产品名称和型号<input type="text" id="t1" class="editbox"  name="cpname" onblur="c()"  /><a href="upindex_cp.asp" >上传图片</a><br></label></td></tr>
<tr><td>
<label>产品参考单价&nbsp;&nbsp;&nbsp;<input type="text" class="editbox"  name="cpprice" id="cpp"/></label></td></tr>
<tr><td>
<label style="color:red;">产品结算单价&nbsp;&nbsp;&nbsp;<input type="text" onfocus="on()" onblur="out()"class="editbox" id="cpe"  name="cpearn" /></label><span id="sp1" style="position:fixed;display:none;">此值越低购买可能性越高</span></td></tr><tr><td>

销售方式&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="how" >
<option value="货到付款">货到付款</option>
<option value="银行汇款">银行汇款</option>
</select><br>

<input type="submit" class="but" value="提交"/>
<input type="reset" class="but" name="Submit2" value="清除"/>
<input type="button" class="but" value="返回" onClick="location.href='javascript:history.back()';">
</td></tr>
</form>
</table>
</div>
</fieldset>


</body>
</html>


<% end if %>