<!--#include file="conn.asp"--> 
<title>订购 最大最多最全的商家商品交易市场</title>
<meta name="Keywords" content="百联百,最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,购物,在线,购物网站,团购,电子商务,供应,买卖信息,网店,一口价,网络购物,打折"/>
<meta name="Description" content="百联百-最大最多最全的商家商品交易市场,买家，卖家，批发，代理，订单，价格，产品，分销，用品，生意,淘宝,掏宝,网上购物,在线交易,交易市场,网上交易,交易市场,网上买,网上卖,购物网站,团购,贸易,购物,电子商务,供应,一口价,网络购物,打折。"/>
<%dim cpcountprice,cpnumprice,cpname,cpprice,cpearn,cpnum,gyname,how,way,now,other1,other2,other3

cpname=request.form("cpname") 
cpprice=request.form("cpprice")
cpearn=request.form("cpearn")
cpnum=request.form("cpnum")
cpcountprice=request.form("cpcountprice")
cpnumprice=request.form("cpnumprice")
gyname=request.form("gyname")
other1=request.form("other1")
other2=request.form("other2")
how=request.form("how")
way="订购界面"
cgname=session("cgname") 
now="订单预订"

if cpnum<>"" then
exec="select * from cp" 
set rs=server.createobject("adodb.recordset") 
rs.open exec,conn,1,3 
rs.addnew
rs("cpname")=cpname
rs("cpprice")=cpprice
rs("cpearn")=cpearn
rs("cpnum")=cpnum
rs("cpcountprice")=cint(rs("cpprice"))*cint(rs("cpnum"))
rs("cpnumprice")=(cint(rs("cpprice"))-cint(rs("cpearn")))*cint(rs("cpnum"))
rs("gyname")=gyname
rs("other1")=other1
rs("other2")=other2
rs("how")=how
rs("way")=way
rs("now")=now
rs("cgname")=cgname
rs.update 
response.write "<script>alert('预订成功!');location.href='cgindex.asp';</script>"
else
response.write "<script>alert('订购数量必须填写，请检查后填写再提交!');location.href='javascript:history.back()';</script>" 

end if
%>

