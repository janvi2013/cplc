<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <style>
        .fa {
           font-size:800%;
           color:red;
           margin-top:10%;
        }

        .lightbox {
    position:fixed; /* keeps the lightbox window in the current viewport */
    top:37%; 
    left:35%; 
    width:50%; 
    height:35%; 
    background-color:rgba(34,34,34,.9);
    text-align:center;
    display:none;
    

}

    </style>





     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
    <link href="assets/css/ProjectStyle.css" rel="stylesheet" />




    
     
    <asp:UpdatePanel  ID="updatepannel1" runat="server"  UpdateMode="Conditional"> 
                  <ContentTemplate>   
                   
                 
                <div class="container-fluid" style="background-color:#EBEFF2">
  <div class="row">
    <div class="col-xs-6" style="background-color:#FFFFFF;width:25%;margin-left:15%">
       
        <img src="assets/img/logo.gif"  height="250%" width="75%"/><br />
        <h1  style="color:#404040;font-size:large">COMPUTER POINT KARNAL</h1><p>computer point institute of technology and management</p>
    </div>
    <div class="col-xs-6" style="background-color:#FFFFFF;width:45%;">
        <h1 style="background-color:#E4F7FD;font-size:medium;font-weight:800;color:#4E120A"><img src="assets/img/logo.gif"  height="10%" width="10%"/> COMPUTER POINT 
            INSTITUTE, KARNAL</h1>
        <br /><br />
        <asp:Label ID="wronguserpassword" runat="server" style="display:block;color:red;"></asp:Label><br />

        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox><br />
        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"  TextMode="Password" placeholder="Password"></asp:TextBox><br /><br />
        <asp:Button ID="login" runat="server"  CssClass="btn btn-success"   Text="Login" style="margin-left:30%" OnClick="login_Click" />
        
        
        <%--<div id="fa" style=" position:fixed; margin-left:10%;margin-top:-20% ;height:100%;width:100%;display:none;">
        <i class="fa fa-circle-o-notch fa-spin" style="font-size:95px;color:red;"></i>
            </div>--%>
        <div id="light" class="lightbox">
            <i class="fa fa-circle-o-notch fa-spin fa" ></i>
        </div>

    </div>
  </div>
</div> 
    
 
              
</ContentTemplate>
        </asp:UpdatePanel>


    <div>






         <%--<script src="datepicker/js/Jquery-2.2.4.js"></script>--%>
 <%--<script src="assets/js/jquery-1.10.2.js"></script>--%>         
        
     <script src="datepicker/js/Jquery-2.2.4.min.js"></script>   
     <%--<script src="datepicker/js/jquery-ui.js"></script>
    <script src="datepicker/js/jquery-ui.min.js"></script>          
    <script src="datepicker/js/jquery.js"></script>    --%>    
     <link href="datepicker/css/jquery-ui.min.css" rel="stylesheet" />
    <link href="datepicker/css/jquery-ui.css" rel="stylesheet" />
    <link  href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" /> 
    <%--<link href="login/style.css" rel="stylesheet" />--%>
    
   
    
     <script src="assets/js/bootstrap.js"></script>   
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>


        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
 
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>

<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css" />





    </div>



    <script type="text/javascript">

        $(document).ready(function () {

        
        $("#ContentPlaceHolder2_login").click(function () {
            debugger;

            $('#light').show();
           
           // $("#fa").show();
           
           
           

        });
        });
        


</script>



    

</asp:Content>

