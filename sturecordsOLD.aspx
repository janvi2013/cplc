<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="sturecords.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
   
    
    <style>
        .DivStyle {
            width:100%;
            border-color:red;
            position:absolute;
        }
    </style>
    
</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Button ID="bckbtn" runat="server"  Text="Go Back" CssClass="btn btn-success "  style="margin-left:75%;width:auto"  OnClick="bckbtn_Click1" />
       
       <div class="container" onload="showscroll()">
           <asp:Label ID="lblsearch" runat="server" style="color:red;margin-left:40%"></asp:Label>
           
                
               <div class="row">
                   
                     <%--<div class="col-xs-6">
           <asp:Button ID="btnsearch" runat="server" Text="Search Data" CssClass="btn btn-success" Visible="false" OnClick="btnsearch_Click" />
           <asp:TextBox ID="txtsearchid" runat="server" CssClass="form-control" Width="50%" style="margin-left:15%;border-color:red;"  AutoPostBack="true" placeholder="Search By ID" OnTextChanged="txtsearchid_TextChanged"></asp:TextBox>
           </div>--%>
              <div >
           <asp:TextBox ID="txtsearch" runat="server" CssClass="form-control" Width="50%"  style="margin-left:25%;border-color:red;"  AutoPostBack="true"  placeholder="Search By ID,NAME,COURSE"  OnTextChanged="txtsearch_TextChanged"></asp:TextBox>
        </div></div></div>
            <br />
            
    <%--<div id="fa1" style="position:fixed;" runat="server">
        <i class="fa fa-circle-o-notch fa-spin" style="font-size:48px;color:red"></i>


    </div>--%>

     <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">

        <ContentTemplate>
            


            <%--paging start--%>


 


  <%--paging end--%>



            <br />



   
   <asp:GridView runat="server" ID="gvdetails"   CssClass="footable"   AutoGenerateColumns="False"  DataKeyNames="id"   
        OnSelectedIndexChanged="gvdetails_SelectedIndexChanged" AllowSorting="True" OnRowCancelingEdit="gvdetails_RowCancelingEdit" OnRowEditing="gvdetails_RowEditing" 
       OnRowUpdating="gvdetails_RowUpdating" OnRowCommand="gvdetails_RowCommand" OnRowDataBound="gvdetails_RowDataBound"
        CellPadding="4" ForeColor="#333333" GridLines="None"  PageSize="20" AllowPaging="True" OnPageIndexChanging="gvdetails_PageIndexChanging"  >


       <PagerSettings FirstPageText="" LastPageText="" NextPageText="" PreviousPageText="" Mode="NextPreviousFirstLast" />
<RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
<FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
       <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PreviousPageText="Previous" />
<PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
<AlternatingRowStyle BackColor="White" />
<Columns>
<asp:TemplateField HeaderText="Edit">
<ItemTemplate>


    <table>
        <tr><td>

<asp:ImageButton ID="imgbtn" ImageUrl="~/Edit.jpg" runat="server" Width="20" Height="20" onclick="imgbtn_Click"   CausesValidation="false"  CommandName="Select"  CommandArgument='<%#Eval("id") %>' /></td>
<td><asp:ImageButton ID="imgprofile" runat="server"  ImageUrl="~/img/printimage.jpg" Width="20" Height="20"   OnClick="imgprofile_Click"  CommandName="Select" CommandArgument='<%#Eval("id") %>' /><br /></td>

<td> <asp:ImageButton ID="imgrupee" runat="server" ImageUrl="~/img/rupeesymbol.jpg"  Width="20" Height="20" CommandName="Select"  CommandArgument='<%#Eval("id") %>'  OnClick="imgrupee_Click"/></td>
 <td> <asp:ImageButton ID="imgcertificate" runat="server" ImageUrl="~/img/certificate.png"  Width="20" Height="20" CommandName="Select2"  CommandArgument='<%#Eval("id") %>' OnClick="imgcertificate_Click" /></td>
</tr>
</table>

</ItemTemplate>
</asp:TemplateField>

    
    
   <%--<asp:TemplateField HeaderText="ID">
       
        <ItemTemplate>
           <%--<%#Eval("id") %>
       </ItemTemplate>
       <EditItemTemplate>
           <%--<asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>'></asp:Label>
       </EditItemTemplate>
   </asp:TemplateField>--%>



    <asp:BoundField DataField="id" HeaderText="ID"  />
    <asp:BoundField DataField="student" HeaderText="Student"  />
    <asp:BoundField DataField="father" HeaderText="Father" />
    <asp:BoundField DataField="course" HeaderText="Course" />
    <asp:BoundField DataField="dob" HeaderText ="Dob" ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol" >
    <HeaderStyle CssClass="hiddencol" />
    <ItemStyle CssClass="hiddencol" />
    </asp:BoundField>
    <asp:BoundField DataField="address" HeaderText="Address"  ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol" >
    <HeaderStyle CssClass="hiddencol" />
    <ItemStyle CssClass="hiddencol" />
    </asp:BoundField>
    <asp:BoundField DataField="phone" HeaderText="Phone" />
    <asp:BoundField DataField="mobile" HeaderText="Mobile" />
    <asp:BoundField DataField="gender" HeaderText="Gender"  ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol">
    <HeaderStyle CssClass="hiddencol" />
    <ItemStyle CssClass="hiddencol" />
    </asp:BoundField>
    <asp:BoundField DataField="email" HeaderText="Email"  ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol">   

    <HeaderStyle CssClass="hiddencol" />
    <ItemStyle CssClass="hiddencol" />
    </asp:BoundField>
    

    <asp:BoundField DataField="inst" HeaderText="Installment"  ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol" >
        <HeaderStyle CssClass="hiddencol" />
    <ItemStyle CssClass="hiddencol" />

            </asp:BoundField>






    <asp:BoundField DataField="reg_date" HeaderText="Registration Date" />
    <asp:BoundField DataField="operatername" HeaderText="Record Added By" ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol" >
    <HeaderStyle CssClass="hiddencol" />
    <ItemStyle CssClass="hiddencol" />
    </asp:BoundField>
    <asp:BoundField DataField="idproof" HeaderText="Id Proof" ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol">
    <HeaderStyle CssClass="hiddencol" />
    <ItemStyle CssClass="hiddencol" />
    </asp:BoundField>
    <asp:BoundField DataField="fee" HeaderText="Fee" />
    <asp:BoundField DataField="amount" HeaderText="Paid Amount"/>
    <asp:BoundField DataField="balance" HeaderText="Balance"  />
    

</Columns>
       <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
       <SortedAscendingCellStyle BackColor="#FDF5AC" />
       <SortedAscendingHeaderStyle BackColor="#4D0000" />
       <SortedDescendingCellStyle BackColor="#FCF6C0" />
       <SortedDescendingHeaderStyle BackColor="#820000" />
 </asp:GridView>




 <asp:Label ID="lblresult" runat="server"/>
<asp:Button ID="btnShowPopup" runat="server" style="display:none"  />
<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlpopup"
CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
</asp:ModalPopupExtender>
 <asp:Panel ID="pnlpopup" runat="server" BackColor="White" Height="100%" Width="100%" style="display:none">
<table width="100%" style="border:Solid 3px #D55500; width:100%; height:90%" cellpadding="0" cellspacing="0">
<tr style="background-color:#D55500">
<td colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger" align="center">User Details</td>
</tr>
<tr>
<td class="td">
UserId:
</td>
<td>
<asp:Label ID="lblID" runat="server"></asp:Label>
<%-- <asp:TextBox ID="txtid" runat="server"></asp:TextBox>--%>
   
</td>
</tr>
<tr>

<td class="td">
Student Name:
</td>
<td>
<asp:TextBox ID="txtstunme" runat="server"/>
</td>
</tr>
<tr>
<td class="td">
Father Name:
</td>
<td>
<asp:TextBox ID="txtfathnme" runat="server"/>
</td>
</tr>
<tr>
<td class="td">
Course:
</td>
<td>
<asp:TextBox ID="txtcourse" runat="server" TextMode="MultiLine"/>
</td>
</tr>
<tr>
<td class="td">
Dob:
</td>
<td>
<asp:TextBox ID="txtdob" runat="server"/>
</td>
</tr>
    <tr>
        <td class="td">Address</td>
        <td><asp:TextBox ID="txtaddress" runat="server"   TextMode="MultiLine"   /></td>
    </tr>

     <tr>
        <td class="td">Student Phone :</td>
        <td><asp:TextBox ID="txtstuphon" runat="server"/></td>
    </tr>

     <tr>
        <td class="td">Parent Phone :</td>
        <td><asp:TextBox ID="txtparentphon" runat="server"/></td>
    </tr>

     <tr>
        <td class="td">Gender :</td>
        <td><asp:TextBox ID="txtgender" runat="server"/></td>
    </tr>

     <tr>
        <td class="td">Email Id :</td>
        <td><asp:TextBox ID="txtemail" runat="server"/></td>
    </tr>
     <tr>
        <td class="td">Fee :</td>
        <td><asp:TextBox ID="txtfee" runat="server"/></td>
    </tr>

     <tr>
        <td class="td">Inst :</td>
        <td><asp:TextBox ID="txtinstall" runat="server"/></td>
    </tr>

     <tr>
        <td class="td">Ragistration Date :</td>
        <td><asp:TextBox ID="txtregistration" runat="server"/></td>
    </tr>

     <tr>
        <td class="td">Rcord Added by :</td>
        <td><asp:TextBox ID="txtrecordadded" runat="server"/></td>
    </tr>0
     <tr>
        <td class="td">Id Proof :</td>
        <td><asp:TextBox ID="txtidprof" runat="server"/></td>
    </tr>  


<tr>
<td>
</td>
<td>
<asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Update" CssClass="btn btn-success"  onclick="btnUpdate_Click"/>
<asp:Button ID="btnCancel" runat="server" Text="Cancel"   CssClass="btn btn-primary"/>
</td>
</tr>
</table>
</asp:Panel>

            <div>
                  <asp:Button ID="pop" runat="server" style="display:none;"/>
                </div>
<%--Second Popup  For Receipt--%>
 <asp:ModalPopupExtender ID="ModelPopupExtender2" runat="server" TargetControlID="pop" PopupControlID="pnlpopup2" CancelControlID="btncancel" BackgroundCssClass="modalBackground">

</asp:ModalPopupExtender>

  <asp:Panel ID="pnlpopup2" runat="server" BackColor="White" Height="100%" Width="100%" style="display:none">
<table  style="border:Solid 3px #D55500; width:100%; height:90%" >

    <tr style="background-color:blue">  
<td colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger;text-align:center" >Enter Receipt Details</td>
</tr>


    <tr><td class="td"><b>Receipt Code </b></td><td> <asp:TextBox ID="txtrecptid" runat="server"   ReadOnly="true" ></asp:TextBox></td> </tr>       
     <tr>  <td class="td" > <b>Student Code </b></td><td><asp:TextBox ID="txtstucodforrecpt" runat="server"  ReadOnly="true"></asp:TextBox></td></tr>
     <tr> <td class="td"> <b> Name </b></td><td><asp:TextBox ID="txtnameforrecpt" runat="server" ReadOnly="true" ></asp:TextBox></td></tr>
     <tr>  <td class="td"> <b>Father Name </b></td>  <td>  <asp:TextBox ID="txtfahternameforrecpt" runat="server"  ReadOnly="true"></asp:TextBox></td></tr>
     <tr> <td class="td"> <b> Course </b> </td>   <td>  <asp:TextBox ID="txtcourseforrecpt" runat="server"   ReadOnly="true" ></asp:TextBox></td></tr>
     <tr><td class="td">  <b> Address </b> </td><td>    <asp:TextBox ID="txtaddressforrecpt" runat="server"  ReadOnly="true"  TextMode="MultiLine"></asp:TextBox></td></tr>
     <tr> <td class="td">  <b>Date </b>  </td> <td>     <asp:TextBox ID="txtdateforrecpt" runat="server" ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Month </b></td><td>        <asp:TextBox ID="txtmonthforrecpt" runat="server"  ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Amount </b></td><td>      <asp:TextBox ID="txtamountforrecpt" runat="server"  TextMode="Number" ></asp:TextBox></td></tr>

    <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtamountforrecpt" ValidationGroup="Group1" errormessage="Please Enter Amount " CssClass="Validators" style="color:red;display:none"/>

     <tr> <td class="td"><b>On Account Of </b></td><td>      <asp:TextBox ID="txtonaccountforrecpt" runat="server" ></asp:TextBox></td></tr><br />


         <tr> <td class="td"><b>Password </b></td><td>      <asp:TextBox ID="txtpassword" runat="server"  TextMode="Password" ></asp:TextBox></td></tr>



         <tr><td></td>  <td><asp:Label ID="lblpassworderror" runat="server" ForeColor="Red"></asp:Label></td> </tr>


         <tr>
             <td></td>
             <td>
    <asp:Button ID="buttonupdate" CommandName="Update" runat="server" Text="Save" CssClass="btn btn-success" OnClick="buttonupdate_Click" />
<asp:Button ID="buttoncancel" runat="server" Text="Cancel"   CssClass="btn btn-primary"/>


             </td>
         </tr>

</table>
</asp:Panel>


<%--Second Popup End For Receipt--%>


<%--Third Popup For Certificate Start--%>
            <div style="display:none"><asp:Button ID="pop1" runat="server"  style="display:none" /></div>

<asp:ModalPopupExtender ID="ModelPopupExtender3" runat="server" TargetControlID="pop1" PopupControlID="pnlpopup3" CancelControlID="cancelcerfificate" BackgroundCssClass="modalBackground"></asp:ModalPopupExtender>

 <asp:Panel ID="pnlpopup3" runat="server" BackColor="White" Height="100%" Width="100%" style="display:none;">
<table  style="border:Solid 3px #D55500; width:100%; height:90%" >
   <tr style="background-color:#990000">
<td colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger;text-align:center" >
    <h1 style="color:white"> Enter Certificate Details </h1></td>
</tr>




         <tr> <td class="td"> <b> Student Code </b></td><td><asp:TextBox ID="txtcertificatestucode" runat="server"  CssClass="form-control"  ReadOnly="true"  Width="50%"></asp:TextBox></td></tr>

     <tr> <td class="td"> <b> Name </b></td><td><asp:TextBox ID="txtcertificatename" runat="server" ReadOnly="true"  CssClass="form-control"      Width="50%" ></asp:TextBox></td></tr>
     <tr>  <td class="td"> <b>Father Name </b></td>  <td>  <asp:TextBox ID="txtcertificatefather" runat="server"  CssClass="form-control"   ReadOnly="true"  Width="50%"></asp:TextBox></td></tr>
     <tr> <td class="td"> <b> Course </b> </td>   <td>  <asp:TextBox ID="txtcertificatecourse" runat="server"     CssClass="form-control"  ReadOnly="true"  Width="50%"></asp:TextBox></td></tr>
     <tr><td class="td">  <b> Issue Date </b> </td><td>    <asp:TextBox ID="txtcertificatedate" runat="server"   CssClass="form-control" Width="50%" ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Session Start </b></td><td>        <asp:TextBox ID="txtcertificatesessionstart" runat="server" CssClass="form-control" Width="50%" ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Session End </b></td><td>      <asp:TextBox ID="txtcertificatesessionend" runat="server" CssClass="form-control" Width="50%" ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Charges</b></td><td>      <asp:TextBox ID="txtcertificatecharges" runat="server" CssClass="form-control" Width="50%" ></asp:TextBox></td></tr><br />
     <tr> <td class="td"><b>Grade</b></td><td>      <asp:TextBox ID="txtcertificategrade" runat="server" CssClass="form-control" Width="50%"   style="text-transform:uppercase" ></asp:TextBox></td></tr><br />


         <tr>
             <td></td>
             <td>
    <asp:Button ID="savecertificate"  runat="server" Text="Save Details" CssClass="btn btn-success" OnClick="savecertificate_Click"  />
    <asp:Button ID="cancelcerfificate" runat="server" Text="Cancel"   CssClass="btn btn-primary"/>


             </td>
         </tr>



    </table>




            </asp:Panel>

<%--Third Popup For Certificate End--%>






<%--Fourth Popup For Fee Entry Password Start--%>
            

<%--<asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="pop" PopupControlID="Panel4" CancelControlID="btncancel" BackgroundCssClass="modalBackground">

</asp:ModalPopupExtender>

  <asp:Panel ID="Panel4" runat="server" BackColor="White" Height="100%" Width="100%" style="display:none">
<table  style="border:Solid 3px #D55500; width:100%; height:90%" >

    <tr style="background-color:blue">
<td colspan="2" style=" height:10%; color:White; font-weight:bold; font-size:larger;text-align:center" >Enter Password </td>
</tr>


    <tr><td class="td"><b>Enter passsword </b></td><td> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td> </tr>       
     <tr>  <td class="td" > <b>Student Code </b></td><td><asp:TextBox ID="TextBox2" runat="server"  ReadOnly="true"></asp:TextBox></td></tr>
     <tr> <td class="td"> <b> Name </b></td><td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" ></asp:TextBox></td></tr>
     <tr>  <td class="td"> <b>Father Name </b></td>  <td>  <asp:TextBox ID="TextBox4" runat="server"  ReadOnly="true"></asp:TextBox></td></tr>
     <tr> <td class="td"> <b> Course </b> </td>   <td>  <asp:TextBox ID="TextBox5" runat="server"   ReadOnly="true" ></asp:TextBox></td></tr>
     <tr><td class="td">  <b> Address </b> </td><td>    <asp:TextBox ID="TextBox6" runat="server"  ReadOnly="true"  TextMode="MultiLine"></asp:TextBox></td></tr>
     <tr> <td class="td">  <b>Date </b>  </td> <td>     <asp:TextBox ID="TextBox7" runat="server" ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Month </b></td><td>        <asp:TextBox ID="TextBox8" runat="server"  ></asp:TextBox></td></tr>
     <tr> <td class="td"><b>Amount </b></td><td>      <asp:TextBox ID="TextBox9" runat="server"  TextMode="Number" ></asp:TextBox></td></tr>

    <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="TextBox1" ValidationGroup="Group1" errormessage="Please Enter Amount " CssClass="Validators" style="color:red;display:none"/>


         <tr>
             <td></td>
             <td>

                 <asp:Label ID="lblerro" runat="server" ForeColor="Red"></asp:Label>
    <asp:Button ID="btn_sumbitpassword" CommandName="Enter" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btn_sumbitpassword_Click"/>
<asp:Button ID="button2" runat="server" Text="Cancel"   CssClass="btn btn-primary" OnClick="button2_Click"/>


             </td>
         </tr>

</table>
</asp:Panel>--%>








            
            
            
<%--Fourth Popup For Fee Entry Password End--%> 
































</ContentTemplate>
         <Triggers>
        <asp:PostBackTrigger ControlID="buttonupdate" />
         </Triggers>
         </asp:UpdatePanel>






     <script src="datepicker/js/Jquery-2.2.4.min.js"></script>  
              
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"  rel="stylesheet" type="text/css" />    
    <link href="datepicker/css/jquery-ui.min.css" rel="stylesheet" />
    <link href="datepicker/css/jquery-ui.css" rel="stylesheet" />
    <link  href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css"/>    
    
    
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
     



    
   <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"   rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    <script src="assets/js/jquery-1.3.2.min.js"></script>
    <script src="assets/js/jquery.blockUI.js"></script>
    
    <script src="datepicker/js/jquery.js"></script>       
    <script src="assets/js/bootstrap.js"></script>
        

    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" /> 
    
    <link href="assets/css/ProjectStyle.css" rel="stylesheet" />
    <link href="assets/css/ajaxpopup.css" rel="stylesheet" />




    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <script src="assets/js/ASPSnippets_Pager.min.js"></script>
   
  
      <script src="assets/js/QuickSearch.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




    





    <script type="text/javascript">



        $(document).ready(function () {
           var j = jQuery.noConflict();        


            $(function () {
                $('[id*=gvdetails]').footable();

            });           
        
        });

       

        function ShowPopup() {
            debugger
            $("#myModal").modal('show');
         
        }
        function HideModItem() {
            $("#myModal").modal('hide');
            
        }


       function myFunction() {
            debugger;
            // Declare variables 
            var input, filter, table, tr, i;
            input = document.getElementById("ContentPlaceHolder1_txtsearch");
            filter = input.value.toUpperCase();
            table = document.getElementById("ContentPlaceHolder1_gvdetails");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
                var td
                td = tr[i].getElementsByTagName("td")[2];
                if (td) {
                    if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }


           

        
        



    </script>

    
</asp:Content>

