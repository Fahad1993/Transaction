using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Globalization;
using Telerik.Web.UI;
using System.Web.Configuration;
using Newtonsoft.Json;

public partial class examples_update_inseart_student : System.Web.UI.Page
{
    private static readonly string cs = ConfigurationManager.ConnectionStrings["Sandbox"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    [WebMethod]
    public static dynamic get_courses()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            result values = new result();
            SqlCommand com = new SqlCommand("__getCourses", con);

            com.CommandType = CommandType.StoredProcedure;

            //com.Parameters.AddWithValue("@UserID", 63100017);



            con.Open();
            SqlDataReader rdr = com.ExecuteReader();
            rdr.Read();
            values.code = rdr["code"].ToString();
            values.messageA = rdr["messageA"].ToString();
            values.messageE = rdr["messageE"].ToString();
            values.data = rdr["data"].ToString();
            try
            {
                values.extraData = rdr["extraData"].ToString();
            }
            catch
            {

            }

            return values;
        }

    }
    [WebMethod]
    public static dynamic getblood()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            result values = new result();
            SqlCommand com = new SqlCommand("__getBlood", con);

            com.CommandType = CommandType.StoredProcedure;

            //com.Parameters.AddWithValue("@UserID", 63100017);



            con.Open();
            SqlDataReader rdr = com.ExecuteReader();
            rdr.Read();
            values.code = rdr["code"].ToString();
            values.messageA = rdr["messageA"].ToString();
            values.messageE = rdr["messageE"].ToString();
            values.data = rdr["data"].ToString();
            return values;
        }

    }

    public class result
    {
        public string code { get; set; }
        public string messageA { get; set; }
        public string messageE { get; set; }
        public string data { get; set; }
        public string extraData { get; set; }
    }




}