<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <html>
       


                 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 

        </head>
    </html>   
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   

   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
 <%--<script src="datepicker/js/Jquery-2.2.4.js"></script>--%>
 <%--<script src="assets/js/jquery-1.10.2.js"></script>--%>         
        
     <script src="datepicker/js/Jquery-2.2.4.min.js"></script>   
     <script src="datepicker/js/jquery-ui.js"></script>
    <script src="datepicker/js/jquery-ui.min.js"></script>          
    <script src="datepicker/js/jquery.js"></script>        
    <script src="assets/js/bootstrap.js"></script>



    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" /> 
    <%--<link href="login/style.css" rel="stylesheet" />--%>
    <link href="assets/css/ProjectStyle.css" rel="stylesheet" />
   <%-- <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"  rel="stylesheet" type="text/css" />--%>


    
    <link href="datepicker/css/jquery-ui.min.css" rel="stylesheet" />
    <link href="datepicker/css/jquery-ui.css" rel="stylesheet" />
    <link  href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css"/>    
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <%-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>--%>



    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"     rel="stylesheet" type="text/css" />



        <script  type="text/javascript">
          // var j=jQuery.noConflict();
            $(document).ready(function () {
                $(".nav-tabs a").click(function () {
                    $(this).tab('show');
                });
            

            });


            
                function ShowPopup(message) {
                    debugger;
                    $(function () {
                        $("#dialog").html(message);
                        $("#dialog").dialog({
                            title: "Computer Point",
                            buttons: {
                                Close: function () {
                                    $(this).dialog('close');
                                }
                            },
                            modal: true
                        });
                    });
                };







                //$(function () {

                //    $("#dialog").dialog({
                //        model:true,
                //        autoOpen: false,
                //        title: "Computer point",
                //        width: 350,
                //        height: 200
                        


                //    });
                    //$("#ContentPlaceHolder1_btnsave").click(function (e) {
                    //    debugger;
                        
                    //    if ($("#dialog").dialog('open')) {
                            
                           
                    //    }
                             
                        
                    //});

              //  });




                 
                 //$("#ContentPlaceHolder1_btnsave").click(function () {

                 //    ('#myModal').model('show');
                 //    return false;
                 
                 //});
             

            
            
           

</script>


    <%--INPUT FORM FOR STUDENT START--%>


    
    <%--<asp:ScriptManager  ID="ScripManager1" runat="server"/>--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

        <ContentTemplate>

          




             <!-- Modal -->
  <div id="dialog" style="display: none;">
    Record Added successfuly With ID :
</div>



<%--model end--%>
















    <div class="container">
          <asp:Button ID="bckbtn" runat="server"  Text="Go Back" CssClass="btn btn-success" style="width:auto;height:auto;margin-left:75%"  CausesValidation="false"  OnClick="bckbtn_Click"/>

  <ul class="nav nav-tabs">
    <li class="active"><a href="#studetnentry">Student Entry</a></li>
    <li><a href="#menu1">Menu 1</a></li>
    <li><a href="#menu2">Menu 2</a></li>
    <li><a href="#menu3">Menu 3</a></li>
  </ul>
        




        <%--Data Entry Form For Students--%>
        
  <div class="tab-content">
    <div id="studetnentry" class="tab-pane fade in active" style="background-color:#EBEFF2">
      <h1 class="h1">INSTRUCTIONS FOR REGISTRATION FORM FILLING</h1>

        
         <p>  1. Fill candidate name as per your mark sheet<br />
           2. Date of birth as per 10th mark sheet / birth certificate<br />
           3. Kindly fill your own mobile no to receive SMS alert<br />
           4. Email-id (preferably if available)
       
        </p>



       <%--<ul>
           <li class="h1">1. Fill candidate name as per your mark sheet</li>
           <li class="h1">2. Date of birth as per 10th mark sheet birth certificate</li>
           <li class="h1">3. Kindly fill your own mobile no to receive SMS alert</li>
           <li class="h1">4. Email-id (preferably if available)</li>
       </ul>--%> 
        <h2  class="Candidateheading">Candidate's Details/ उम्मीदवार का विवरण</h2>
        
        <div class="row" >            
            <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtstucode" CssClass="form-control"     runat="server"  ReadOnly="true"></asp:TextBox>

            </div>
            <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
               <asp:DropDownList ID="dropdowncourse" runat="server" CssClass="form-control">
                   <asp:ListItem Value="hscit"></asp:ListItem>
                   <asp:ListItem Value="mkcl"></asp:ListItem>
                   <asp:ListItem></asp:ListItem>                  
               </asp:DropDownList>

                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="dropdowncourse"
                ValidationGroup="Group1" errormessage="Please select your Course!" CssClass="Validators"   InitialValue="0"   style="color:red;display:none"/>


                <%--<asp:CompareValidator ControlToValidate="dropdowncourse" ID="CompareValidator2"
    ValidationGroup="Group1" CssClass="errormesg" ErrorMessage="Please select Your Course"
    runat="server" Display="Dynamic" 
    Operator="NotEqual" ValueToCompare="0" Type="Integer" style="color:red;display:none" />--%>     
            </div>            
        </div>
         <br>

        <div class="row">
            <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtname" CssClass="form-control"   type="text"   runat="server" placeholder=" Name" style="text-transform:uppercase;"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtname"
                     ValidationGroup="Group1" errormessage="Please enter your name!" CssClass="Validators" style="color:red;display:none"/>


            </div>
            <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtfather" CssClass="form-control"   type="text"   runat="server" placeholder=" Father Name" style="text-transform:uppercase;"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" id="reqFather" controltovalidate="txtfather" 
                       ValidationGroup="Group1"  errormessage="Please enter your father name!"  style="color:red;display:none"/>
            </div>            
        </div>
         <br>
<div class="row">
            <div class="col-xs-6">
               <%-- <input type="text" class="form-control">--%>
                <asp:TextBox ID="txtaddress" CssClass="form-control"    type="text"    runat="server" placeholder=" Address" style="text-transform:uppercase;"></asp:TextBox>
                   <asp:RequiredFieldValidator runat="server" id="reqAddress" controltovalidate="txtaddress" 
                  ValidationGroup="Group1"  errormessage="Please enter your address!"  style="color:red;display:block;display:none"/>
            </div>
            <div class="col-xs-6">
               <%-- <input type="text" class="form-control">--%>
                
               <asp:DropDownList ID="dropdowngender" runat="server" CssClass="form-control">
                   <asp:ListItem>MALE</asp:ListItem>
                   <asp:ListItem>FEMALE</asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="dropdowngender"
                ValidationGroup="Group1" errormessage="Please select your Gender!" CssClass="Validators"   InitialValue="0"   style="color:red;display:none"/>

            </div>            
        </div>
         <br>
<div class="row">
            <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtstumobile" CssClass="form-control"  type="text"    runat="server" placeholder=" Mobile Number" TextMode="Number"></asp:TextBox>
               
            </div>
            <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtparentmob" CssClass="form-control" runat="server"  type="text"  placeholder=" Parent's Mobile Number" TextMode="Number"></asp:TextBox>





                <asp:RequiredFieldValidator runat="server" id="txParent" controltovalidate="txtparentmob" ValidationGroup="Group1"  
                     errormessage="Please Enter Parent Mobile"  style="color:red;display:none"/>
            </div>            
        </div>
         <br>
<div class="row">
            <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtdob" CssClass="form-control" runat="server" type="text"  placeholder="DOB"  name="text" ></asp:TextBox>

                
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtdob" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
    ErrorMessage="Invalid date format." ValidationGroup="Group1" style="display:none" />







                <asp:RequiredFieldValidator runat="server" id="txtdb" controltovalidate="txtdob" ValidationGroup="Group1"  
                      errormessage="Please enter your DOB!"  style="color:red;display:none"/>
               
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtidfrf" CssClass="form-control" runat="server"  ValidationGroup="Group1"   type="text"  placeholder=" ID Proof (Adhaar/Passport)"  name="text"   style="text-transform:uppercase;" ></asp:TextBox>
            
            </div>            
        </div>
         <br>

        <div class="row">
        <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" type="text"  placeholder=" Email Id" ></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="Validators" Display="None"
    ControlToValidate="txtemail" runat="server" ErrorMessage="Email is required." style="display:none"></asp:RequiredFieldValidator>


            <asp:RegularExpressionValidator ID="regexEmailValid"  ValidationGroup="Group1" runat="server" 
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" 
                ErrorMessage="Invalid Email Format, Write @ In Email Id" style="color:red;display:none"></asp:RegularExpressionValidator>


            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtfees" CssClass="form-control" runat="server" type="text"    placeholder=" Fees"  TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="txtfee"  ValidationGroup="Group1" 
                     controltovalidate="txtfees" errormessage="Please enter your fees!"  style="color:red;display:none"/>
            </div>            
        </div>
         <br>
         <div class="row">
        <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>
                <asp:TextBox ID="txtinstallment" CssClass="form-control" runat="server"   type="text"  placeholder="Installment" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="txtinstall"  ValidationGroup="Group1" 
                 controltovalidate="txtinstallment" errormessage="Please enter your installment!"    style="color:red;display:none;"/>
            </div>
            <div class="col-xs-6">
               <%-- <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="" ReadOnly="true"  Text="user"  ></asp:TextBox>--%>
                 
                            
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server"    />
                <%--<asp:AjaxFileUpload ID="AjaxFileUpload11" runat="server" MaximumNumberOfFiles="5"      OnUploadComplete="OnUploadComplete" />--%>


            </div>            
        </div>
         <br>
         <div class="row">  
        <div class="col-xs-6">
                <%--<input type="text" class="form-control">--%>           
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Group1" ShowMessageBox="true" ShowSummary="false" />       
                <asp:Button  ID="btnsave" runat="server" Text="Save"  ValidationGroup="Group1"  type="button"  CssClass="btn btn-success"    OnClick="btnsave_Click"  />
             <asp:Label ID="lblsuccess1" runat="server"></asp:Label>   
            </div>
            <div class="col-xs-6">
                <asp:Button  ID="btncancel" runat="server" Text="Cancel"   CssClass="btn btn-success" OnClick="btncancel_Click" CausesValidation="false" />   
            </div>            
        </div> 
            </div>  
       
      <%--End Data Entry Form For Students--%>

      





    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>













       





    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
           
            


            </ContentTemplate>
       <Triggers>             
            <asp:PostBackTrigger ControlID="btnsave" />
      <%-- <asp:AsyncPostBackTrigger ControlID="btnsave"  EventName="Click" />--%>
                   

              </Triggers>
        
    </asp:UpdatePanel>
    



 

   
         
   
  
</asp:Content>



