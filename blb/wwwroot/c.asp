<form method="post" name=myform action="ab.asp">
�ա�����<input type="text" name="name" value=""><br>
ѧ���ţ�<input type="text" name="num" value=""><br>
��������<input type="text" name="aaa" value=""><br>
��������<input type="text" name="bbb" value=""><br>
��֤�룺<img src="retest.asp" onclick="reabc(this);" title="���ͼƬ���Ը�����֤��" height="13" width="52">
<input type="text" size="5" name="C" autocomplete="off" style="ime-mode:disabled;" value="">
<input type="submit" value="�ύ">
</form>



<script type="text/javascript">
function reabc(img)
{
    var imageUrl = 'retest.asp'; //�������ͼƬ��ASPXҳ��
    img.src = imageUrl + '?' + Math.random();
}
</script>
