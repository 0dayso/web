<!--#include file="conn.asp"--> 
<%dim cpcountprice,cpnumprice,cpname,cpprice,cpearn,cpnum,gyname,how,way,now

cpname=request.form("cpname") 
cpprice=request.form("cpprice")
cpearn=request.form("cpearn")
cpnum=request.form("cpnum")
cpcountprice=request.form("cpcountprice")
cpnumprice=request.form("cpnumprice")
gyname=request.form("gyname")
how=request.form("how")
way="��ӭ����������������������д������ַ�绰�����ƿ��������ŵ绰"
cgname=session("cgname") 
now="����Ԥ��"

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
rs("how")=how
rs("way")=way
rs("now")=now
rs("cgname")=cgname
rs.update 
response.write "<script>alert('�����ɹ�!');location.href='cgindex.asp';</script>"
else
response.write "<script>alert('��������������д���������д���ύ!');location.href='javascript:history.back()';</script>" 
end if
%>

