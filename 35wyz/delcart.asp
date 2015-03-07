<%
Set cart=session("cart")
if request("productID")<>"" then
productID=Cstr(request("productID"))
cart.Remove(productID)
end if
set session("cart")=cart
response.redirect("cart.asp")
%>
