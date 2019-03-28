<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />   
    <link href="assets/css/ProjectStyle.css" rel="stylesheet" />



    <%--<link href="login/style.css" rel="stylesheet" />--%>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/jquery-1.10.2.js"></script>
    


  <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">   --%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  


    <style>
        /*.ButtonMargin {
            margin-left:60%;
            color:red;

            
        }
        .DivStyle {
            width:100%;
            border-color:red;
            position:absolute;
        }*/

        .img-backcolor {
            background-color:darkcyan
        }

        
    </style>
   <%--page header for logout--%>
    <div  class="DivStyle">        
         <asp:Label ID="lbluser" runat="server"></asp:Label>       
        <asp:Button ID="logout1" runat="server" CssClass="ButtonMargin btn btn-success"    Text="Logout" OnClick="logout1_Click"/>                 
        </div><%--page header for logout--%>
    <br /><br /><br />

    <hr  class="hr-primary"/>


   <%--link icon start--%>
    <div class="container" style="margin-left:12%">
        <div class="row">
            <div class="col-md-4 ">
                <asp:LinkButton ID="link1" runat="server" PostBackUrl="~/student.aspx">
        <img src="icon/icon2.jpg" class="img-circle" alt="Add Student" width="100" height="100"/>
                </asp:LinkButton>               
  
                        </div>
            <div class="col-md-4">
                <asp:LinkButton ID="lk2" runat="server"  PostBackUrl="~/sturecords.aspx">
                <img src="img/Results.png" class="img-circle" alt="Add Student" width="100" height="100"  />
                    </asp:LinkButton>
            </div>
            <div class="col-md-4">
                 <%--<img src="icon/icon1.jpg" class="img-circle" alt="Add Student" width="100" height="100" />              --%>

                <asp:LinkButton ID="lk3" runat="server"  PostBackUrl="~/issueresult.aspx">
                <img src="img/result.jpg"  class="img-circle"  alt="Student Result" width="100" height="100" />
                    </asp:LinkButton>


            </div>
            

             <div class="col-md-4">
                <%--<asp:LinkButton ID="lk5" runat="server"  PostBackUrl="~/certificate.aspx">
                <img src="img/certificate.png" class="img-circle" alt="Issue Certificate" width="100" height="100" />
                    </asp:LinkButton>--%>
            </div>







            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            </div>
    </div>
    <%--link icon end--%>
   

</asp:Content>

    