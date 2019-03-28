<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="stuprofile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <%--<script src="datepicker/js/Jquery-2.2.4.js"></script>--%>
 <%--<script src="assets/js/jquery-1.10.2.js"></script>--%>         
        
    

   

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <style> 
        .td {                          

    padding-top: .5em;
    padding-bottom: .5em;
    
}
.flex-container {
    display: -webkit-flex;
    display: flex;  
    -webkit-flex-flow: row wrap;
    flex-flow: row wrap;
    text-align: center;
}

.flex-container > * {
    padding: 15px;
    -webkit-flex: 1 100%;
    flex: 1 100%;
}

.article {
    text-align: left;
}

header {background: black;color:white;}
footer {background: #aaa;color:white;}
.nav {background:#eee;
      

}

.nav ul {
    list-style-type: none;
    padding: 0;
}
.nav ul a {
    text-decoration: none;
}

@media all and (min-width: 768px) {
    .nav {text-align:left;-webkit-flex: 1 auto;flex:1 auto;-webkit-order:1;order:1;}
    .article {-webkit-flex:5 0px;flex:5 0px;-webkit-order:2;order:2;}
    footer {-webkit-order:3;order:3;}
}
</style>


    




    <asp:HiddenField runat="server" ID="imghdn" />
     <asp:Button ID="btnhome"  runat="server" CssClass="btn btn-success"  Text="Home" OnClick="btnhome_Click" style="width:auto;margin-left:10%"  />


    <asp:Button ID="btnback"  runat="server" CssClass="btn btn-success"  Text="Go Back" OnClick="btnback_Click" style="margin-left:75%;width:auto" />
<div class="flex-container">
    <h1 style="background-color:black;color:yellow;"> Your Profile</h1>

<hr />
   


<div class="nav" id="personaldetail" runat="server" style="width:45%;border-radius:1px;border-color:red;font-size:medium;font-family:Arial;text-align:center;">
    <div style="margin-left:75%;position:fixed; background-color:red;height:auto;width:15%;"> <td><asp:Image ID="Image1" runat="server" Height="150" Width="150" /></td></div>
    
    <table id="personaldetails" runat="server"   cellspacing="10"  style="margin-left:15%;font-weight:bolder;">     
              
        <%--<tr><td>Personal Details:</td></tr>--%>      



        <tr >
            <td style="padding-right:20px" class="td"> ID </td>
            <td class="td"><asp:Label ID="lblid" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">Student Name </td>
            <td class="td"><asp:Label ID="lblname" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">Father Name </td>
            <td class="td"><asp:Label ID="Label1" runat="server">  </asp:Label></td>  
        </tr>

         <tr >
            <td style="padding-right:20px" class="td">Course </td>
            <td class="td"><asp:Label ID="Label2" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px">DOB </td>
            <td><asp:Label ID="Label3" runat="server">  </asp:Label></td>  
        </tr >   
         <tr >
            <td style="padding-right:20px" class="td">Address </td>
            <td class="td"><asp:Label ID="Label4" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td"> Student Phone </td>
            <td class="td"><asp:Label ID="Label5" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">Parent Phone </td>
            <td class="td"><asp:Label ID="Label6" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">Gender </td>
            <td class="td"><asp:Label ID="Label7" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">Email </td>
            <td class="td"><asp:Label ID="Label8" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">Fee </td>
            <td class="td"><asp:Label ID="Label9" runat="server">  </asp:Label></td>  
             </tr>
              <tr >
            <td style="padding-right:20px" class="td">Installment </td>
            <td class="td"><asp:Label ID="Label10" runat="server">  </asp:Label></td>  
        </tr>
              <tr >
            <td style="padding-right:20px" class="td">RegDate </td>
            <td class="td"><asp:Label ID="Label11" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">ID Proof</td>
            <td class="td"><asp:Label ID="Label12" runat="server">  </asp:Label></td>  
        </tr>
         <tr >
            <td style="padding-right:20px" class="td">Installment </td>
            <td class="td"><asp:Label ID="Label13" runat="server">  </asp:Label></td>  
        </tr>
        
        
    </table>

    
<%--</div> 
   <div class="article" style="border-radius:5px;border:solid;border-color:red">

        <table id="residentialaddress" runat="server" style="margin-left:35%;font-weight:bolder;">
               <tr >
            <td style="padding-right:20px">
                
                
               
                <asp:Image ID="Image1" runat="server" Height="150" Width="150" />


            </td>
            
        </tr>
           
    </table>--%>




        <%--  <br/>
            
            <div style="width:auto;height:auto;border:solid;border-color:red;border-radius:5px;font-size:medium;font-family:Arial;text-align:center;">
           <u> Residential Details :</u><br />

           <table style="margin-left:25%;font-weight:bolder;">
        <tr >
            <td style="padding-right:20px">Address :</td>
            <td>table data</td>  
        </tr>
         <tr >
            <td style="padding-right:20px">City :</td>
            <td>table data</td>  
        </tr>
         <tr >
            <td style="padding-right:20px">Ditrirct :</td>
            <td>table data</td>  
        </tr>
         <tr >
            <td style="padding-right:20px">State :</td>
            <td>table data</td>  
        </tr>
         <tr >
            <td style="padding-right:20px">First Name :</td>
            <td>table data</td>  
        </tr>   
        
    </table>
  

        </div>--%>


    </div>
        
<%--<article class="article">
  <h1>London</h1>
  <p>London is the capital city of England. It is the most populous city in the United Kingdom,
  with a metropolitan area of over 13 million inhabitants.</p>
  <p>Standing on the River Thames, London has been a major settlement for two millennia,
  its history going back to its founding by the Romans, who named it Londinium.</p>
  <p><strong>Resize this page to see that what happens!</strong></p>
</article>--%>

<footer>Thanks For Visiting !</footer>
</div>

    <div>
         <script src="datepicker/js/Jquery-2.2.4.min.js"></script>   
     <script src="datepicker/js/jquery-ui.js"></script>
    <script src="datepicker/js/jquery-ui.min.js"></script>          
    <script src="datepicker/js/jquery.js"></script>        
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
        
    </script>
</asp:Content>

