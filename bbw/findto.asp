<head>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="����";}
</style>
</head>
<body>
<br><br><br><br>
<table width="350" border="1" cellspacing="0" cellpadding="0" align="center" > 
<tr><th>������Ҫ���ҵ�����</th></tr>
<form name="form1" method="post" action="find.asp" > 
<tr><td>���� <input type="text" name="na"></td></tr>
<tr><td><input type="submit" name="Submit" value="�ύ"> 
<input type="reset" name="Submit2" value="����"></td></tr> 
</form> 
</table>
<td><a href="index.asp">������ҳ</td>
<script language=javascript>
ie4=(document.all)?true:false;
ns4=(document.layers)?true:false;

function toExit(){
var args=toExit.arguments;
var visible=args[0];
if(ns4){
   theObj=eval("document.layers[\'"+args[1]+"\']");
   if(theObj)theObj.visibility=visible;
   }
else if(ie4){
   if(visible=='show')visible='visible';
   if(visible=='hide')visible='hidden';
   theObj=eval("document.all[\'"+args[1]+"\']");
   if(theObj)theObj.style.visibility=visible;
   }
}
</script>

<script language="JavaScript" type="text/javascript">
function rightBottomAd(){
 var abc = document.getElementById("ad");
 abc.style.top = document.documentElement.scrollTop+document.documentElement.clientHeight-215+"px"; 
 setTimeout(function(){rightBottomAd();},50);
}
rightBottomAd();
</script>
<script language="javascript" src="images/js.js"></script>
</body>
</html><div style="display:none">

