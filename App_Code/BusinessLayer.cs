using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Numerics;


namespace nscomputerpoint
{


    public interface intCertificateDetails
    {
        Double P_stucodeforcertificate
        {
            get;
            set;
        }
        string P_stunameforcertificate
        {
            get;
            set;
        }
        string p_stufatherforcertificate
        {
            get;
            set;
        }
        string P_stucourseforcertificate
        {
            get;
            set;
        }
        string P_stuissuedateforcertificate
        {
            get;
            set;
        }
        string P_stusessionstartdateforcertificate
        {
            get;
            set;
        }
        string P_stusessionenddateforcertificate
        {
            get;
            set;
        }
        Int32 P_stuchargesforcertificate
        {
            get;
            set;
        }
        string P_stugradeforcertificate
        {
            get;
            set;

        }



    }
    public interface intReceiptDetails
    {
        Int32 P_recptcode
        {
            get;
            set;
        }
        Int32 P_recptstucode
        {
            get;
            set;
        }
        string P_recptstuname
        {
            get;
            set;
        }
        string P_recptfathname
        {
            get;
            set;
        }
        string P_recptcourse
        {
            get;
            set;
        }
        string P_recptaddress
        {
            get;
            set;
        }
        String P_recptdatetime
        {
            get;
            set;
        }
        string P_recptmonth
        {
            get;
            set;
        }
        Double P_recptamount
        {
            get;
            set;

        }
        string P_recptonaccountof
        {
            get;
            set;
        }

    }
    public interface  intStudentAdmission
    {

      
        Int32 id
        {
            get;
            set;
        }


        string P_course
        {
            get;
            set;
        }
        string p_stuname
        {
            get;
            set;
        }
        string P_fathername
        {
            get;
            set;
        }
        string P_address
        {
            get;
            set;
        }
        string P_gender
        {
            get;
            set;
        }
        string P_mobileno
        {
            get;
            set;
        }
        string P_parentmob
        {
            get;
            set;
        }
        string P_dob
        {
            get;
            set;
        }
        string P_idproof
        {
            get;
            set;
        }
        string p_emailid
        {
            get;
            set;
        }
        Double P_fees
        {
            get;
            set;
        }
        Double P_installment
        {
            get;
            set;
        }
        string P_operator
        {
            get;
            set;
        }
        string P_regdate
        {
            get;
            set;
        }
        string P_image
        {
            get;
            set;
        }
                    
            


    }
    public interface intuser
    {
        String P_username
        {
            get;
            set;
        }
        String P_password
        {
            get;
            set;
        }

    }

    public interface intexamlogin
    {
        Int32 P_sturegistrationid
        {
            get;
            set;

        }
    }
    public class clsExamLoginprp : intexamlogin
    {
        Int32 sturegistrationid;
        public int P_sturegistrationid
        {
           
            get
            {
                return sturegistrationid;
            }

            set
            {
                sturegistrationid = value;
            }
        }
    }
    public class clsCertificateDetailsprp : intCertificateDetails
    {
        Int32  stuchargesforcertificate;
        String stunameforcertificate, stufatherforcertificate, stucourseforcertificate, stuissuedateforcertificate, stusessionstartdateforcertificate, stusessionenddateforcertificate, stugradeforcertificate;
        Double stucodeforcertificate;
        public Double P_stucodeforcertificate
        {
            get
            {
                return stucodeforcertificate;
            }
            set
            {
                stucodeforcertificate = value;
            }
        }

        public string P_stunameforcertificate
        {
            get
            {
                return stunameforcertificate;
             }
            set
            {
                stunameforcertificate = value;
            }
        }

        public string p_stufatherforcertificate
        {
            get
            {
                return stufatherforcertificate;
            }
            set
            {
                stufatherforcertificate = value;
            }
        }

        public string P_stucourseforcertificate
        {
            get
            {
                return stucourseforcertificate;
            }
            set
            {
                stucourseforcertificate = value;
            }
        }

        public string P_stuissuedateforcertificate
        {
            get
            {
                return stuissuedateforcertificate;
            }
            set
            {
                stuissuedateforcertificate = value;
            }
        }

        public string P_stusessionstartdateforcertificate
        {
            get
            {
                return stusessionstartdateforcertificate;
            }
            set
            {
                stusessionstartdateforcertificate = value;
            }
        }

        public string P_stusessionenddateforcertificate
        {
            get
            {
                return stusessionenddateforcertificate;
            }
            set
            {
                stusessionenddateforcertificate = value;
            }
        }

        public int P_stuchargesforcertificate
        {
            get
            {
                return stuchargesforcertificate;
            }
            set
            {
                stuchargesforcertificate = value;
            }
        }

        public string P_stugradeforcertificate
        {
            get
            {
                return stugradeforcertificate;
            }
            set
            {
                stugradeforcertificate = value;
            }
        }
    }
    public class clsReceiptDetailsprp : intReceiptDetails
    {

        Int32 recptcode,recptstucode;
        Double recptamount;
        String recptstuname, recptfathname, recptcourse, recptaddress,recptmonth,recptonaccountof;
        String recptdatetimel;
        public int P_recptcode
        {
            get
            {
                return recptcode;
            }
            set
            {
                recptcode = value;
            }
        }

        public int P_recptstucode
        {
            get
            {
                return recptstucode;
            }
            set
            {
                recptstucode = value;
            }
        }

        public string P_recptstuname
        {
            get
            {
                return recptstuname;
            }
            set
            {
                recptstuname = value;
            }
        }

        public string P_recptfathname
        {
            get
            {
                return recptfathname;
            }
            set
            {
                recptfathname = value;
            }
        }

        public string P_recptcourse
        {
            get
            {
                return recptcourse;
            }
            set
            {
                recptcourse = value;
            }
        }

        public string P_recptaddress
        {
            get
            {
                return recptaddress;
            }
            set
            {
                recptaddress = value;
            }
        }

        public String P_recptdatetime
        {
            get
            {
               return recptdatetimel;
            }
            set
            {
                recptdatetimel = value;
            }
        }

        public string P_recptmonth
        {
            get
            {
                return recptmonth;
            }
            set
            {
                recptmonth = value;
            }
        }

        public Double P_recptamount
        {
            get
            {
                return recptamount;
            }
            set
            {
                recptamount = value;
            }
        }

        public string P_recptonaccountof
        {
            get
            {
                return recptonaccountof;
            }
            set
            {
                recptonaccountof = value;
            }
        }
    }  
    public class clsstudentadmissionprp : intStudentAdmission
    {

        Int32 id;
        string course,stuname,fathername,adress,gender,phonno,parentphonno,dob,idproof,emailid,operatorr,regdate,img;
        Double fees,instalment;


        public Int32 P_id
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }

        public string p_regdate
        {
            get
            {
                return regdate;
            }
            set
            {
                regdate = value;
            }
        }

        public string P_course
        {
            get
            {
                return course;
            }
            set
            {
                course = value;
            }
        }

        public string p_stuname
        {
            get
            {
                return stuname;
            }
            set
            {
                stuname = value;
            }
        }

        public string P_fathername
        {
            get
            {
                return fathername;
            }
            set
            {
                fathername = value;
            }
        }

        public string P_address
        {
            get
            {
                return adress;
            }
            set
            {
                adress = value;
            }
        }

        public string P_gender
        {
            get
            {
                return gender;
            }
            set
            {
                gender = value;
            }
        }

        public string P_mobileno
        {
            get
            {
                return phonno;
            }
            set
            {
                phonno = value;
            }
        }

        public string P_parentmob
        {
            get
            {
                return parentphonno;
            }
            set
            {
                parentphonno = value;
            }
        }

        public string P_dob
        {
            get
            {
                return dob;
            }
            set
            {
                dob = value;
            }
        }

        public string P_idproof
        {
            get
            {
                return idproof;
            }
            set
            {
                idproof = value;
            }
        }

        public string p_emailid
        {
            get
            {
                return emailid;
            }
            set
            {
                emailid = value;
            }
        }

        public Double P_fees
        {
            get
            {
                return fees;
            }
            set
            {
                fees = value;
            }
        }

        public Double  P_installment
        {
            get
            {
                return instalment;
            }
            set
            {
                instalment = value;
            }
        }
        public string P_operator
        {
            get
            {
                return operatorr;
            }
            set
            {
                operatorr = value;
            }
            
        }
        public string P_image
        {
            get
            {
                return img;
            }
            set
            {
                img = value;
            }
        }





        int intStudentAdmission.id
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public string P_regdate
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }
    }
    public class clsuserprp : intuser
    {

        private String un, pass;
        public string P_username
        {
            get
            {
                return un;
            }
            set
            {
                un = value;
            }
        }

        public string P_password
        {
            get
            {
                return pass;
            }
            set
            {
                pass = value;
            }
        }
    }
    public abstract class clscon
    {

        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    public class clscomputerpoint : clscon
    {
        public Int32 checkuser(clsuserprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("logincheck", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@u", SqlDbType.VarChar, 100).Value = p.P_username;
            cmd.Parameters.Add("@p", SqlDbType.VarChar, 100).Value = p.P_password;
            cmd.Parameters.Add("@ret", SqlDbType.Int);
            cmd.Parameters["@ret"].Direction = ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            Int32 k = Convert.ToInt32(cmd.Parameters["@ret"].Value);
            cmd.Dispose();
            return k;
        }

        public void SaveCertificateDetails(clsCertificateDetailsprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                SqlCommand cmd = new SqlCommand("inscertificatedetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add("@studentcod",SqlDbType.Float).Value=p.P_stucodeforcertificate;
                cmd.Parameters.Add("@name",SqlDbType.VarChar,200).Value=p.P_stunameforcertificate;
                cmd.Parameters.Add("@father",SqlDbType.VarChar,200).Value=p.p_stufatherforcertificate;
                cmd.Parameters.Add("@course",SqlDbType.VarChar,200).Value=p.P_stucourseforcertificate;
                cmd.Parameters.Add("@sessions",SqlDbType.VarChar,100).Value=p.P_stusessionstartdateforcertificate;
                cmd.Parameters.Add("@session",SqlDbType.VarChar,100).Value=p.P_stusessionenddateforcertificate;
                cmd.Parameters.Add("@issuedate",SqlDbType.VarChar,100).Value=p.P_stuissuedateforcertificate;
                cmd.Parameters.Add("@grade",SqlDbType.VarChar).Value=p.P_stugradeforcertificate;
                cmd.Parameters.Add("@charges", SqlDbType.Int).Value = p.P_stuchargesforcertificate;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public void SaveReceiptDetails(clsReceiptDetailsprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                SqlCommand cmd = new SqlCommand("insreceiptdetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add("@recptcourse", SqlDbType.VarChar, 100).Value = p.P_recptcourse;
                cmd.Parameters.Add("@recptstucode", SqlDbType.Int).Value = p.P_recptstucode;
                cmd.Parameters.Add("@receiptno", SqlDbType.Int).Value = p.P_recptcode;
                cmd.Parameters.Add("@recptstuname", SqlDbType.VarChar, 100).Value = p.P_recptstuname;
                cmd.Parameters.Add("@recptfathname", SqlDbType.VarChar, 100).Value = p.P_recptfathname;
                cmd.Parameters.Add("@recptmonth", SqlDbType.VarChar, 100).Value = p.P_recptmonth;
                cmd.Parameters.Add("@recptdatetimel", SqlDbType.VarChar, 100).Value = p.P_recptdatetime;
                cmd.Parameters.Add("@recptamount", SqlDbType.Float).Value = p.P_recptamount;
                cmd.Parameters.Add("@sign", SqlDbType.VarChar, 100).Value = 0;
                cmd.Parameters.Add("@recptonaccountof", SqlDbType.VarChar).Value = p.P_recptonaccountof;
                cmd.Parameters.Add("@recptaddress1", SqlDbType.VarChar, 500).Value = p.P_recptaddress;     
                cmd.Parameters.Add("@amtword", SqlDbType.VarChar, 100).Value = 0;
                cmd.Parameters.Add("@add2", SqlDbType.VarChar).Value = 0;
                cmd.Parameters.Add("@bankno", SqlDbType.VarChar,100).Value = 0;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public void savestudent_rec(clsstudentadmissionprp p)
        {
           
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            try
            {

                SqlCommand cmd = new SqlCommand("insstudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add("@course", SqlDbType.VarChar, 100).Value = p.P_course;
                cmd.Parameters.Add("@stuname", SqlDbType.VarChar, 100).Value = p.p_stuname;
                cmd.Parameters.Add("@fathername", SqlDbType.VarChar, 100).Value = p.P_fathername;
                cmd.Parameters.Add("@adress", SqlDbType.VarChar, 100).Value = p.P_address;
                cmd.Parameters.Add("@gender", SqlDbType.VarChar, 100).Value = p.P_gender;
                cmd.Parameters.Add("@phonno", SqlDbType.VarChar, 100).Value = p.P_mobileno;
                cmd.Parameters.Add("@parentphonno", SqlDbType.VarChar, 100).Value = p.P_parentmob;
                cmd.Parameters.Add("@dob", SqlDbType.VarChar, 100).Value = p.P_dob;
                cmd.Parameters.Add("@emailid", SqlDbType.VarChar, 100).Value = p.p_emailid;
                cmd.Parameters.Add("@fees", SqlDbType.Float).Value = p.P_fees;
                cmd.Parameters.Add("@instalment", SqlDbType.Float).Value = p.P_installment;
                cmd.Parameters.Add("@regdate", SqlDbType.VarChar, 100).Value = DateTime.Now.ToString();
                // cmd.Parameters.Add("@operator", SqlDbType.VarChar, 100).Value = user;
                cmd.Parameters.Add("@idproof", SqlDbType.VarChar, 100).Value = p.P_idproof;
                cmd.Parameters.Add("@operator", SqlDbType.VarChar, 100).Value = p.P_operator;
                cmd.Parameters.Add("@img", SqlDbType.VarChar, 200).Value = p.P_image;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }


        public void updatestudent_rec(clsstudentadmissionprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                SqlCommand cmd = new SqlCommand("updstudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = p.P_id;
                cmd.Parameters.Add("@course", SqlDbType.VarChar, 100).Value = p.P_course;
                cmd.Parameters.Add("@stuname", SqlDbType.VarChar, 100).Value = p.p_stuname;
                cmd.Parameters.Add("@fathername", SqlDbType.VarChar, 100).Value = p.P_fathername;
                cmd.Parameters.Add("@adress", SqlDbType.VarChar, 100).Value = p.P_address;
                cmd.Parameters.Add("@gender", SqlDbType.VarChar, 100).Value = p.P_gender;
                cmd.Parameters.Add("@phonno", SqlDbType.VarChar, 100).Value = p.P_mobileno;
                cmd.Parameters.Add("@parentphonno", SqlDbType.VarChar, 100).Value = p.P_parentmob;
                cmd.Parameters.Add("@dob", SqlDbType.VarChar, 100).Value = p.P_dob;
                cmd.Parameters.Add("@emailid", SqlDbType.VarChar, 100).Value = p.p_emailid;
                cmd.Parameters.Add("@fees", SqlDbType.Float).Value = p.P_fees;
                cmd.Parameters.Add("@instalment", SqlDbType.Float).Value = p.P_installment;
                cmd.Parameters.Add("@regdate", SqlDbType.VarChar, 100).Value = p.p_regdate;
                // cmd.Parameters.Add("@operator", SqlDbType.VarChar, 100).Value = user;
                cmd.Parameters.Add("@idproof", SqlDbType.VarChar, 100).Value = p.P_idproof;
                cmd.Parameters.Add("@operator", SqlDbType.VarChar, 100).Value = p.P_operator;
                cmd.ExecuteNonQuery();
                cmd.Dispose();


            }
            catch(Exception ex)
            {
                throw ex;
            }
        }


        public DataSet Bindddl()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                SqlDataAdapter adp = new SqlDataAdapter("gaurav.dispcourse", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
        }


        public List<clsstudentadmissionprp>  Get_ReceiptCodeMax()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("GetMaxReceiptCode", con);
                // cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();

                List<clsstudentadmissionprp> obj = new List<clsstudentadmissionprp>();
                if (dr.HasRows)
                {
                    dr.Read();
                    clsstudentadmissionprp k = new clsstudentadmissionprp();
                    k.P_id = Convert.ToInt32(dr[0]);
                    obj.Add(k);
                }
                dr.Close();
                cmd.Dispose();
                con.Close();
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            

        }

        public List<clsstudentadmissionprp> Get_StudentID()
        {

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("GetMaxID", con);
               // cmd.CommandType = CommandType.StoredProcedure;
                SqlDataReader dr = cmd.ExecuteReader();
                
                List<clsstudentadmissionprp> obj = new List<clsstudentadmissionprp>();
                if (dr.HasRows)
                {
                    dr.Read();
                    clsstudentadmissionprp k = new clsstudentadmissionprp();
                    k.P_id = Convert.ToInt32(dr[0]);
                    obj.Add(k);
                }
                dr.Close();
                cmd.Dispose();
                con.Close();
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
                


        }

        public DataSet BindGridview()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter("gaurav.dispstudent", con);
               DataSet ds = new DataSet();
               // DataTable dt = new DataTable();



                adp.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
        }


        public DataTable ExamLogin(clsExamLoginprp p)
        {
            if (con.State == ConnectionState.Broken)
            {
                con.Open();
            }

            try
            {

                SqlCommand cmd = new SqlCommand("examlogin",con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@sturegid", SqlDbType.Int).Value = p.P_sturegistrationid;
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                return dt;
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable GetSearchRecord()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            try
            {


                SqlDataAdapter adp = new SqlDataAdapter("dispstudent", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                return ds.Tables[0];
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }


        public List<clsstudentadmissionprp> Find_Rec(Int32 id)
        {

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
           // try
            //{

                SqlCommand cmd = new SqlCommand("findstudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;
                SqlDataReader dr = cmd.ExecuteReader();
                List<clsstudentadmissionprp> obj = new List<clsstudentadmissionprp>();
                if (dr.HasRows)
                {
                    dr.Read();
                    clsstudentadmissionprp k = new clsstudentadmissionprp();
                    k.P_id = Convert.ToInt32(dr[0]);
                    k.p_stuname = dr[1].ToString();
                    k.P_fathername = dr[2].ToString();
                    k.P_course = dr[3].ToString();
                    k.P_dob = dr[4].ToString();
                    k.P_address = dr[5].ToString();
                    k.P_mobileno = dr[6].ToString();
                    k.P_parentmob = dr[7].ToString();
                    k.P_gender = dr[8].ToString();
                    k.p_emailid = dr[9].ToString();
                    k.P_fees = Convert.ToDouble(dr[10]);
                    k.P_installment = Convert.ToDouble(dr[11]);
                    k.p_regdate = dr[12].ToString();
                    k.P_operator = dr[13].ToString();
                    k.P_idproof = dr[14].ToString();
                    k.P_image = dr[15].ToString();
                    obj.Add(k);
                }
                dr.Close();
                cmd.Dispose();
                con.Close();
                return obj;

           // }
            //catch(Exception ex)
            //{
            //    throw ex;
            //    //throw new Exception(ex.Message + " -- " + ex.InnerException);

            //}
        }

        public List<clsstudentadmissionprp> Disp_Rec()
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "dispstudent";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsstudentadmissionprp> obj = new List<clsstudentadmissionprp>();
            while (dr.Read())
            {
                clsstudentadmissionprp k = new clsstudentadmissionprp();
                  //  k.P_id = Convert.ToInt32(dr[0]);
                    k.p_stuname = dr[1].ToString();
                    k.P_fathername = dr[2].ToString();
                    k.P_course = dr[3].ToString();
                    k.P_dob = dr[4].ToString();
                    k.P_address = dr[5].ToString();
                    k.P_mobileno = dr[6].ToString();
                    k.P_parentmob = dr[7].ToString();
                    k.P_gender = dr[8].ToString();
                    k.p_emailid = dr[9].ToString();
                    k.P_fees = Convert.ToDouble(dr[10]);
                    k.P_installment = Convert.ToDouble(dr[11]);
                    k.p_regdate = dr[12].ToString();
                    k.P_operator = dr[13].ToString();
                    k.P_idproof = dr[14].ToString();
                    obj.Add(k);
                }
                dr.Close();
                cmd.Dispose();
                con.Close();
                return obj;
               

                
            }
        }
        
    }
        
        



   





