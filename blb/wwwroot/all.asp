<Script>

var url = new Array(3);
url[0] = "http://www.yam.org.tw/";
url[1] = "http://www.kimo.com/";
url[2] = "http://chinese.yahoo.com/";

function goto(i) {
    location = url[i];
}

</Script>

<table width=250><tr><td>
<form><fieldset>
<legend>��Ѱ����</legend>
<input name="go" type="radio" onClick="goto(0)">ެ����
<input name="go" type="radio" onClick="goto(1)">��Ħ
<input name="go" type="radio" onClick="goto(2)">�����Ż�
</fieldset></form>
</table>
