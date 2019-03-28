<%
response.AddHeader "Cache-Control", "no-store"
%>
<html>
<!--#INCLUDE FILE="config.inc"-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Payments</title>
<style>
.oddRow
{
background-color: #FFFFFF
}
body {
	
}
.style2 {color: #000000; }
.style3 {font-size: 10px}
.style6 {font-size: 20px}
#Layer1 {	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
}
.style8 {
	font-size: 40px;
	color: #990000;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>

<body>
<p>&nbsp;</p>
<p align="center">
  <header id="header"></header>
</p>
<div>
  <div align="center" class="style8">
    <p>COMPUTER POINT KARNAL </p>
  </div>
</div>
<table  border="8" align=center width="777" bordercolor="#0080FF" bgcolor="#E6E6E6" cellpadding=4 cellspacing=4>
  <tr>
    <td width="726"><p align="center" class="style2"><font size="6">Display Student Payment Details</font></p></td>
  </tr>
  <tr>
    <td><table  border=1 width=100% height=100% cellspacing="5" cellpadding="5">
      <form class="style2">
        <tr>
          <td width="215" height="25"><div align="center"><b><font size="2" face="Georgia, Times New Roman, Times, serif">Regn No/Enrolment No :</font></b></div></td>
          <td width="365" height="25"><span class="style6">CP/</span>
                <input type=text name="code" size=30 />
                <input type=submit name=smt value="Display" style="font-size: 12pt; font-weight: bold; width: 120px" ></td>
        </tr>
      </form>
    </table></td>
  </tr>
</table>
<p>
  <%
dim id,smt
smt=request.QueryString("smt")
if smt<>"" then
id=request.QueryString("code")

%>
</p>
<table border=1 bgcolor=#FFFFFF width=800 align=center>
  <tr style="color: #FFFFFF; font-weight: bold; background-color: #000000">
    <th><div align="center">Name</div></th>
    <th><div align="center">Type</div></th>
    <th><div align="center">Date <span class="style3">(MM/DD/YY) </span></div></th>
    <th><div align="center">Amount</div></th>
    <th><div align="center">Reciept code</div></th>
    <th>Preview</th>
  </tr>
  <%
set rs=subconn.execute("select * from feeslip where studentcod="&id)
dim name,dep,rec,rd,code,amt,descrip
dim count,clss,sumofFee
count=1
sumofFee=0
while not rs.eof
code=rs.Fields("receiptno").Value
name=rs.Fields("student").Value

amt=rs.Fields("amount").Value
descrip=rs.Fields("account").Value
rd=rs.Fields("rec_date").Value
sumofFee=sumofFee+amt
if count mod 2=0 then
clss="evenRow"
else
clss="oddRow"
end if


%>
  <tr class="<%=clss%>">
    <td height="35"><div align="center"><%=UCase(name) %></div></td>
    <td><div align="center"><%=UCase(descrip)%></div></td>
    <td><div align="center"><%=rd%></div></td>
    <td><div align="center"><%=amt%></div></td>
    <td><div align="center"><%=code%></div></td>
    <td><div align="center"><a href="preview.asp?code=<%=code%>">Preview</a>&nbsp;</div></td>
  </tr>
  <%
count=count+1
rs.MoveNext
wend
%>
  <tr>
    <td height="45" colspan=6><b>Total Paid Amount : <%=sumofFee %></b> </td>
  </tr>
  <%
end if
%>
</table>
<p>&nbsp;</p>
</body>

</html>