<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewPayment.aspx.cs" Inherits="wwwroot_cplc_viewPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style type="text/css">
        <!--

        .style14 {
            width: 580px;
        }

        #Layer1 {
            position: absolute;
            width: 101px;
            height: 178px;
            z-index: 1;
            left: 705px;
            top: 207px;
        }
.style21 {color: #FFFFFF}
.style22 {
	color: #0000FF;
	font-weight: bold;
	font-family: Georgia, "Times New Roman", Times, serif;
}
body {
	background-color: #FFFFCC;
}
.style23 {color: #FF0000}
.style24 {font-size: 36px}
        -->
    </style>
    <script src="file:///C|/Users/hp/Downloads/Scripts/AC_RunActiveContent.js" type="text/javascript"></script>

    <script type="text/javascript">
<!--
    function MM_swapImgRestore() { //v3.0
        var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
    }
    function MM_preloadImages() { //v3.0
        var d = document; if (d.images) {
            if (!d.MM_p) d.MM_p = new Array();
            var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
        }
    }

    function MM_findObj(n, d) { //v4.01
        var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
            d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
        }
        if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
        for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
        if (!x && d.getElementById) x = d.getElementById(n); return x;
    }

    function MM_swapImage() { //v3.0
        var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2) ; i += 3)
            if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
    }
    //-->
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body >
    <p></p>
    <p></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <form id="form1" runat="server">
        <div>

            <p align="center" class="style14"><span class="style51 style22"><span class="style24">CPITM</span> - Student Payment Details</span></p>
            <p align="center">&nbsp;</p>
            <table width="689" height="125" border="0" align="center" cellpadding="4" cellspacing="4" bgcolor="#000000" bordercolor="#C52D2F">
                <tr></tr>
                <tr>
                    <td>
                        <table width="99%" height="16%" border="1" align="center" cellpadding="5" cellspacing="5">
<form class="style7">
                                <tr>
                                    <td width="215" height="25">
                                        <div align="center"><span class="style10 style21"><font face="Georgia, Times New Roman, Times, serif">Regn No/Enrolment No :</font></span></div>
                                    </td>
                                    <td width="365" height="25">
                                        <div align="center">
                                            <span class="style6 style44">
                                                <span class="style11">
                                                    <%--      <input type="text" name="code" size="20" />--%>
                                                    <asp:TextBox ID="code" runat="server"></asp:TextBox>
                                                    <%--    <input type="submit" name="smt" value="Display" style="font-size: 15pt; font-weight: bold; width: 120px">--%>

                                                    <asp:Button ID="btn" runat="server" Text="Display" Style="font-size: 15pt; font-weight: bold; width: 120px" OnClick="btn_Click" />
                                                </span>
                                        </div>
                                    </td>
                                </tr>
</form>
                        </table>

                    </td>
                </tr>
            </table>


            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" ShowFooter="true"  AutoGenerateColumns="False" bgcolor="#FFFFFF" Width="800px" align="center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="student" HeaderText="Name" SortExpression="coursecode" />
                    <asp:BoundField DataField="account" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="rec_date" HeaderText="Date (MM/DD/YY)" ReadOnly="True" SortExpression="Date (MM/DD/YY)" />
                 <%--   <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label ID="labtot" runat="server" Text='<%# Eval("Amount")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                    <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="Amount" DataFormatString="{0:N2}" />
                    <asp:BoundField DataField="receiptno" HeaderText="Reciept code" SortExpression="Reciept code" />
                    <asp:TemplateField HeaderText="Preview">
                        <ItemTemplate>
                            <a href="preview.aspx?code=<%# Eval("receiptno")%>">Preview</a>
                        </ItemTemplate>


                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <p align="center" class="style45 style23"><u>Telephone No.&nbsp;0184 4046975, 9254116274 Email computerpointkarnal@gmail.</u></p>

            </div>
    </form>
</body>

</html>
