<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="iso-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<body>
<div class="col-xs-6" style="background-color:#FFFFFF;width:45%;">
  <h1 style="background-color:#E4F7FD;font-size:medium;font-weight:800;color:#4E120A"><img src="assets/img/logo.gif" alt="j" width="10%"  height="10%"/> COMPUTER POINT 
    INSTITUTE, KARNAL</h1>
  <br />
  <br />
  <asp:Label ID="wronguserpassword" runat="server" style="display:block;color:red;"></asp:Label>
  <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
  <br />
  <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
  <br />
  <br />
<%--  <asp:Button ID="login" runat="server"  CssClass="btn btn-success"   Text="Login" style="margin-left:30%" OnClick="login_Click"/>--%>
</div>
</body>
</html>
