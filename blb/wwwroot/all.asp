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
<legend>ËÑÑ°ÒıÇæ</legend>
<input name="go" type="radio" onClick="goto(0)">Ş¬ÊíÌÙ
<input name="go" type="radio" onClick="goto(1)">ÆæÄ¦
<input name="go" type="radio" onClick="goto(2)">ÖĞÎÄÑÅ»¢
</fieldset></form>
</table>
