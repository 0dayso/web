<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title>买家删除 百联百 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<style type="text/css">
body{background-color="whitesmoke"}
td{font-size:12px;text-align:center;}
th{font-size:13px;face="黑体";}
</style>
</head>
<body>

<br><br><br><br>
<!--#include file="conn.asp"--> 
<% 
exec="select * from cg where id="&request.querystring("id")
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,1 

exec="delete * from cg where id="&request.querystring("id")
conn.execute exec 
conn.close 
set conn=nothing 
response.write "<script>alert('采购用户已删除！');location.href='cgadmin.asp';</script>"

%> 


</body>
</html><div style="display:none">

