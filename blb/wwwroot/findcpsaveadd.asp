<!--#include file="conn.asp"--> 
<title>���� ��������ȫ���̼���Ʒ�����г�</title>
<meta name="Keywords" content="������,��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,����,����,������վ,�Ź�,��������,��Ӧ,������Ϣ,����,һ�ڼ�,���繺��,����"/>
<meta name="Description" content="������-��������ȫ���̼���Ʒ�����г�,��ң����ң������������������۸񣬲�Ʒ����������Ʒ������,�Ա�,�ͱ�,���Ϲ���,���߽���,�����г�,���Ͻ���,�����г�,������,������,������վ,�Ź�,ó��,����,��������,��Ӧ,һ�ڼ�,���繺��,���ۡ�"/>
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
way="��������"
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
rs("other1")=other1
rs("other2")=other2
rs("how")=how
rs("way")=way
rs("now")=now
rs("cgname")=cgname
rs.update 
response.write "<script>alert('Ԥ���ɹ�!');location.href='cgindex.asp';</script>"
else
response.write "<script>alert('��������������д���������д���ύ!');location.href='javascript:history.back()';</script>" 

end if
%>

