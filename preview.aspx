<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preview.aspx.cs" Inherits="wwwroot_preview" %>

<!DOCTYPE html>

<html>
<head>
    <script>

    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <style type="text/css">
        <!--
        body {
            background-color: #121212;
            background-image: url(images/pattern.png);
        }

        .style1 {
            color: #FFFFFF;
            font-family: "Times New Roman", Times, serif;
            font-size: 18px;
        }

        .style2 {
            color: #FFFFFF;
        }
        -->
    </style>
</head>
<!--#INCLUDE FILE="config.inc"-->
<body>

    <p>
        <%


            System.Data.DataTable dt = new System.Data.DataTable();

            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
            System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["subconn"].ToString();
            cmd.CommandText = "select *,convert(varchar,rec_date,106) as y from feeslip where receiptno=" + Request.QueryString["code"] + "";
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = conn;
            da.SelectCommand = cmd;
            conn.Open();
            da.Fill(dt);
            conn.Close();



            //            dim code
            //code = request.QueryString("code")
            //if code<> "" then
            // set rs = subconn.execute("select *,convert(varchar,rec_date,106) as y from feeslip where receiptno=" & code)
            //if not rs.eof then
            //dim acc
            //acc = rs.Fields("").Value
        %>
    </p>
    <p align="center" class="style1 style2">COMPUTER POINT LEARNING CENTRE, KARNAL </p>
    <p align="center" class="style1">WEB RECIEPT FOR KITM &amp; CPLC </p>
    <p align="center">&nbsp;</p>
    <table align="center" border="1" width="500" bordercolor="#FFFFFF" style="font-size: 12px">
        <tr>
            <td>
                <table border="0" cellpadding="3" cellspacing="3" width="100%">
                    <tr>
                        <td width="40%" height="40" colspan="2" align="center" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px; padding: 1px">

                                <span style="letter-spacing: 4px">

                                    <b>KITM - CPLC </b></span>
                                <br />
                                <font size="2">05, Mall Road, 
					KARNAL, HARYANA<br>
				  Phone: 0184-6536524, 9254116274</font>
                            </div>
                        </td>
                        <td width="55%" height="57" bgcolor="#FFFFFF">
                            <div style="border-style: solid; border-width: 1px">
                                <b>Receipt Code :</b><font color="#FF0000"><b><% Response.Write(dt.Rows[0]["receiptno"]); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></font>
                            </div>
                            <div style="border-style: solid; border-width: 1px">
                                <b>Receipt Date :</b><font color="#FF0000"><b><% Response.Write(dt.Rows[0]["y"]);%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></font>
                            </div>
                            <div style="border-style: solid; border-width: 1px;">
                                <b>Month :</b><font color="#FF0000"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <% Response.Write(dt.Rows[0]["month"]);%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></font>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="23" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px">
                                <b>Student Code :</b>
                            </div>
                        </td>
                        <td width="75%" height="23" colspan="2" bgcolor="#FFFFFF">
                            <div style="border-style: solid; border-width: 1px">
                                <font color="#FF0000"><% Response.Write(dt.Rows[0]["studentcod"]);%>&nbsp;</font>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td width="25%" height="23" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px">
                                <b>Name :</b>
                            </div>
                        </td>
                        <td width="75%" height="23" colspan="2" bgcolor="#FFFFFF">
                            <div style="border-style: solid; border-width: 1px">
                                <font color="#FF0000"><%Response.Write(dt.Rows[0]["student"]);%>&nbsp;</font>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="23" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px">
                                <b>Father Name:</b>
                            </div>
                        </td>
                        <td width="75%" height="23" colspan="2" bgcolor="#FFFFFF">
                            <div style="border-style: solid; border-width: 1px">
                                <font color="#FF0000"><% Response.Write(dt.Rows[0]["father"]);%>&nbsp;</font>&nbsp;
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="27" bgcolor="#00CCFF">&nbsp;</td>
                        <td width="75%" height="84" colspan="2" rowspan="3" align="left" valign="top" bgcolor="#FFFFFF">
                            <div style="border-style: solid; border-width: 1px; height: 82px">
                                <p><font color="#FF0000"><% Response.Write(dt.Rows[0]["add1"]);%></font></p>
                                <p><font color="#FF0000"><% Response.Write(dt.Rows[0]["coursecode"]);%></font></p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="22" bgcolor="#00CCFF">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="25%" height="29" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px"><b>Course: </b></div>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="29" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px">
                                <b>Amount :</b>
                            </div>
                        </td>
                        <td width="21%" height="20" bgcolor="#FFFFFF">
                            <div align="center" style="border-style: solid; border-width: 1px">
                                <font color="#FF0000"><% Response.Write(dt.Rows[0]["amount"]);%>&nbsp;</font>
                            </div>
                        </td>
                        <td width="55%" height="29" align="center" valign="top" bgcolor="#FFFFFF">
                            <div align="center" style="border-style: solid; border-width: 1px">
                                <font color="#FF0000"><%Response.Write(dt.Rows[0]["amtwords"]);%></font>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="25%" height="29" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px">
                                <b>Account Of :</b>
                            </div>
                        </td>
                        <td width="70%" height="29" colspan="2" align="center" valign="top" bgcolor="#FFFFFF">
                            <p align="left">
                                <div style="border-style: solid; border-width: 1px">
                                    <font color="#FF0000"><% Response.Write(dt.Rows[0]["month"]);%>&nbsp;</font>&nbsp;
                                </div>
                        </td>
                    </tr>



                    <tr>
                        <td width="20%" height="29" colspan="2" align="center" bgcolor="#00CCFF">
                            <div style="border-style: solid; border-width: 1px; padding: 1px">
                                <br />
                                <font color="#FF0000"><font size="2">For any delay in Books, Exam, Result, DMC and Degree 
					from the concerned university institute shall not be 
					responsible. Students are responsible for updates which they 
					can get from institutes website(cpedu.in) or institute's 
				  notice board</font> </font>
                                <br />
                                &nbsp;
                            </div>
                        </td>
                        <td width="80%" height="29" align="center" bordercolor="#C0C0C0" bgcolor="#FFFFFF" style="border-style: solid; border-width: 1px; padding: 1px">
                            <div style="border-style: solid; border-width: 1px; padding: 1px">
                                <font color="#FF0000"><% Response.Write(dt.Rows[0]["account"]);%></font>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                Web reciept donot require signature. Online print from <span class="style2">dd </span>www.http://cpedu.in/viewold.asp<br />
                                <br />
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>



   <%-- <%
else
response.write "No record"
end if
else
    response.write "specify reciept code"
end if
    %>--%>
</body>
</html>
