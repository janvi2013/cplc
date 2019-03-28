<%@ Page Language="C#" AutoEventWireup="true" CodeFile="examlogin.aspx.cs" Inherits="exam_examlogin" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Take Online Exam</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
<%--	<link rel="stylesheet" href="css/animate.css">--%>
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    </head>
    <body>
    <form id="form" runat="server">

     <asp:ScriptManager ID="ScriptManager1" runat="server" OnInit="ScriptManager1_Init" ></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>



	<div class="container">
		<div class="top">
<%--			<h1 id="title" class="hidden"><span id="logo">Welcome <span>Computer Point</span></span></h1>--%>          

		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Take Exam Online</h2>
			</div>
			<label for="username">Enter Registration Id</label>
			<br/>
<%--			<input type="text" id="username">--%>

            <asp:TextBox ID="txtuser" runat="server"  placeholder="Enter Registration Id" CssClass="form-control"  Width="50%" style="margin-left:25%" required="required" ></asp:TextBox>

                 <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtuser" errormessage="Please enter your name!" />

		
			<%--<label for="password">Password</label>--%>
		
			<%--<input type="password" id="password">--%>
<%--            <asp:TextBox ID="txtpassword" runat="server" ></asp:TextBox>--%>




          <%--  <label for="dob">Enter Your Year of Birth</label><br />
            <asp:TextBox ID="txtdob" runat="server" placeholder="Enter only year of DOB" CssClass="form-control" Width="50%" style="margin-left:25%" required="required" ></asp:TextBox>--%>


          




            <br />
            <asp:DropDownList ID="drpcourse" runat="server" CssClass="form-control" Width="50%" style="margin-left:25%" AutoPostBack="true"  OnSelectedIndexChanged="drpcourse_SelectedIndexChanged">
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





			<br/>
<%--			<button type="submit">Sign In</button>--%>

            <asp:Button ID="submitexam" runat="server"  Text="Submit" CssClass="btn btn-success"  type="button"    OnClientClick="return starttest('onlinexam.aspx')"   OnClick="submitexam_Click"/>
           	<br/>
            <asp:Label ID="lblerror" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
			<a href="../login.aspx"><p class="small">Return Home</p></a>
		</div>




	</div>

<%--                           			<h1 id="title" class="hidden" style="margin-top:-5%"><span id="logo"> <span>Computer Point</span></span></h1>--%>


                </ContentTemplate>




                 <Triggers>             
            <asp:PostBackTrigger ControlID="submitexam" />
      <%-- <asp:AsyncPostBackTrigger ControlID="btnsave"  EventName="Click" />--%>
                   

              </Triggers>

                </asp:UpdatePanel>


        </form>
</body>

<script>
    $(document).ready(function () {
        $('#logo').addClass('animated fadeInDown');
        $("input:text:visible:first").focus();
    });
    $('#username').focus(function () {
        $('label[for="username"]').addClass('selected');
    });
    $('#username').blur(function () {
        $('label[for="username"]').removeClass('selected');
    });
    $('#password').focus(function () {
        $('label[for="password"]').addClass('selected');
    });
    $('#password').blur(function () {
        $('label[for="password"]').removeClass('selected');
    });

    //function starttest(popuppage) {

    //    window.open(popuppage, 'null', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,fullscreen=yes');
    //}
</script>

</html>