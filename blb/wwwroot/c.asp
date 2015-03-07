<form method="post" name=myform action="ab.asp">
姓　名：<input type="text" name="name" value=""><br>
学　号：<input type="text" name="num" value=""><br>
。。。：<input type="text" name="aaa" value=""><br>
。。。：<input type="text" name="bbb" value=""><br>
验证码：<img src="retest.asp" onclick="reabc(this);" title="点击图片可以更改验证码" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
<input type="submit" value="提交">
</form>



<script type="text/javascript">
function reabc(img)
{
    var imageUrl = 'retest.asp'; //你的生成图片的ASPX页面
    img.src = imageUrl + '?' + Math.random();
}
</script>
