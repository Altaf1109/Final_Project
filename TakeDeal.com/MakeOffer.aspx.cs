using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class MakeOffer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
       
        if (Request.QueryString.Count == 0)
        {
            Response.Redirect("~/Admin/template/demo/pages/samples/NotFound.aspx");
        }

        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string date = DateTime.Now.ToString("MM-dd-yyyy");

            string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            string strCmd = "insert into Message(Buyer,Seller,Dated,Message) values ('"+Session["UName"]+"','"+Request.QueryString["Uid"].ToString()+"','"+ date + "','" + txtMsg.Text + "')";
            SqlCommand cmd = new SqlCommand(strCmd, con);
            con.Open();
            cmd.ExecuteNonQuery();//Execute the query across the connection
            con.Close();
            Commons.MsgBox("Message Sent");
            Panel1.Visible = false;
            Panel2.Visible = true;

           // Response.Redirect("~/Home.aspx");
        }
        catch (Exception ex)
        {

            throw ex;
        }
    }
}