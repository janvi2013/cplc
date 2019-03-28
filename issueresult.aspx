<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="issueresult.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <meta name="viewport" content="width=device-width, initial-scale=1">
  <style type="text/css">
.overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
background-color: #000;
filter:alpha(opacity=70);
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
min-width: 600px;
width: 600px;
min-height: 150px;
margin: 100px auto;
background: #f3f3f3;
position: relative;
z-index: 103;
padding: 10px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
}
.cnt223 p{
clear: both;
color: #555555;
text-align: justify;
}
.cnt223 p a{
color: #d91900;
font-weight: bold;
}
.cnt223 .x{
float: right;
height: 35px;
left: 22px;
position: relative;
top: -25px;
width: 34px;
}
.cnt223 .x:hover{
cursor: pointer;
}
</style>

   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <div class="container">
        <div class="row">


      

            <%--poput start--%>

   <div id="overlay" class="overlay" runat="server"></div>

<div class='popup' id="popup"  runat="server" >
<div class='cnt223' style="background-color:aliceblue" id="popup2" runat="server">
<%--<img src='http://www.developertips.net/demos/popup-dialog/img/x.png' alt='quit' class='x' id='x' />--%>
    <img src="img/close.png" alt='quit' class='x' id='x'/>
    <h1 style="color:red;font-size:medium;text-align:center">Computer Point</h1>

    <asp:TextBox ID="txtsearch"  runat="server" CssClass="form-control" placeholder="Search Student"   OnTextChanged="txtsearch_TextChanged" AutoPostBack="true" TextMode="Number"></asp:TextBox>

<br/>
<br/>
<a href='' class='close' style="color:blue">Close</a>

</div>
</div>
<%--poput end --%>
















            
            <div id="resultdiv" runat="server">
            <table  style="border:Solid 3px #D55500; width:100%; height:100%" >

    <tr style="background-color:blue">
<td      colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger;text-align:center" >Result Details</td>
</tr>


    <tr><td class="td"><b>Receipt Code </b></td><td> <asp:TextBox ID="txtrecptid" runat="server"   ReadOnly="true" ></asp:TextBox></td> </tr>       
     <tr>  <td class="td" > <b>Student Code </b></td><td><asp:TextBox ID="txtstucodforrecpt" runat="server"  ReadOnly="true"></asp:TextBox></td></tr>
     <tr> <td class="td"> <b> Name </b></td><td><asp:TextBox ID="txtnameforrecpt" runat="server" ReadOnly="true" ></asp:TextBox></td></tr>
     <tr>  <td class="td"> <b>Father Name </b></td>  <td>  <asp:TextBox ID="txtfahternameforrecpt" runat="server"  ReadOnly="true"></asp:TextBox></td></tr>
     <tr> <td class="td"> <b> Course </b> </td>   <td>  <asp:TextBox ID="txtcourseforrecpt" runat="server"   ReadOnly="true" ></asp:TextBox></td></tr>
     <tr> <td class="td">  <b>Date </b>  </td> <td>     <asp:TextBox ID="txtdateforrecpt" runat="server" ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Result Status </b></td><td>      <asp:TextBox ID="txtamountforrecpt" runat="server"  TextMode="Number" ></asp:TextBox></td></tr>

    <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtamountforrecpt" ValidationGroup="Group1" errormessage="Please Enter Amount " CssClass="Validators" style="color:red;display:none"/>

     <tr> <td class="td"><b>On Account Of </b></td><td>      <asp:TextBox ID="txtonaccountforrecpt" runat="server" ></asp:TextBox></td></tr><br />

         <tr>
             <td></td>
             <td>
    <asp:Button ID="buttonupdate" CommandName="Update" runat="server" Text="Save" CssClass="btn btn-success"/>
    <asp:Button ID="buttoncancel" runat="server" Text="Cancel"   CssClass="btn btn-primary"/>

          </td>
         </tr></table>

            </div>
            </div>
             </div>

    <div>
<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
   <%-- <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"   rel="stylesheet" type="text/css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

        <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>



        <script type="text/javascript">
            $(function () {
                debugger;
               // var overlay = $('<div id="overlay"></div>');

               // var overlay = $('#overlay').attr('id')

                //overlay.show();
                //overlay.appendTo(document.body);

                $('.overlay').show();
                $('.overlay').appendTo(document.body);
                $('.popup').show();
                $('.close').click(function(){
                    $('.popup').hide();
                    // overlay.appendTo(document.body).remove();
                    $('.overlay').appendTo(document.body).remove();
                    return false;
                });
                $('.x').click(function () {
                    $('.popup').hide();
                    // overlay.appendTo(document.body).remove();
                    $('.overlay').appendTo(document.body).remove();
                    return false;
                });
            });

        </script>

    </div>
    


</asp:Content>

