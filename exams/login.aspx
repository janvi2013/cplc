<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="exams_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>CPITM</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="login.css" type="text/css" media="all"/>
   

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<div class="topnav"></div>
<body>
<br/><br/><br/>
<div class="heads">
    <h1>CPITM OES</h1>
    <h2><i>Online Evolution system</i></h2>
</div>    
<br/><br/> <hr/> <br/><br/>
    <form id="form"  runat="server">

         <asp:ScriptManager ID="ScriptManager1" runat="server" OnInit="ScriptManager1_Init" ></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>





        <p>Student Login</p><br/>
        <div class="input-container">
             <i class="fa fa-user icon"></i>
            <%-- <input class="input-field" type="text" placeholder="Username" name="usrnm"/>--%>
            <asp:TextBox ID="txtuser" runat="server" CssClass="input-field "  ></asp:TextBox>

        </div>
       <div class="input-container">
                <i class="fa fa-check icon"></i>
               <%-- <input class="input-field" type="password" placeholder="Password" name="psw"/>--%>
         <%--  <asp:TextBox ID="TextBox2"  runat="server" CssClass="input-field" TextMode="Password"></asp:TextBox>--%>



 <asp:DropDownList ID="drpcourse" runat="server" CssClass="input-field" Width="23%"  AutoPostBack="true"  OnSelectedIndexChanged="drpcourse_SelectedIndexChanged">
                <asp:ListItem>Computer Fundamental</asp:ListItem>
                 <asp:ListItem>MS Word</asp:ListItem>
                 <asp:ListItem>MS Excel</asp:ListItem>
                 <asp:ListItem>MS Power Point</asp:ListItem>
                 <asp:ListItem>Internet</asp:ListItem>
                 <asp:ListItem>C Programming</asp:ListItem>
                 <asp:ListItem>c++ Programming</asp:ListItem>
                 <asp:ListItem>Tally </asp:ListItem>
                 <asp:ListItem>Java</asp:ListItem>
                 <asp:ListItem>Asp.net</asp:ListItem>
                <asp:ListItem>MS Sql</asp:ListItem>
            </asp:DropDownList>





        </div>
        <%--<button type="submit" class="btn">Login</button>--%>


                  <asp:Label ID="lblerror" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" />


 </ContentTemplate>




                 <Triggers>             
            <asp:PostBackTrigger ControlID="Button1" />
      <%-- <asp:AsyncPostBackTrigger ControlID="btnsave"  EventName="Click" />--%>
                   

              </Triggers>

                </asp:UpdatePanel>



    </form>
<br/>
<a href="#" class="forgot">Forgot password?</a>
<br/><br/><br/>
<hr/>
<div class='container'>
<div class="align-left">Version: 1.0</div>
<div class="align-right"><a href="#">Candidate Login</a></div>
</div>
</body>
<footer>Copyright &copy; 2014</footer>
</html>
