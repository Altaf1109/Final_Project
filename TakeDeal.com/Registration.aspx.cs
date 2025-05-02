using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void Register()
    {
        try
        {
            string date = DateTime.Now.ToString("MM-dd-yyyy");

            string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            string strCmd = "insert into Users(Uname,UPassword,RoleID,FullName,SeqQue,SeqAns,Active,Mobile,Dated) values('" + email.Text + "','" + confirmpass.Text + "',"+2+",'" + txtname.Text + "','"+question.SelectedValue+"','"+answer.Text+"',"+1+",'"+mobile.Text+"','"+date+ "');insert into UsersInfo(UserID,Description) values('"+ email.Text + "','"+txtabout.Text+"')";
            SqlCommand cmd = new SqlCommand(strCmd, con);
            con.Open();
            cmd.ExecuteNonQuery();//Execute the query across the connection

            con.Close();
            
            Label2.Text = "Registration Successful";
            Response.Redirect("~/Login.aspx");
            
        }
        catch (Exception ex)
        {
            Label2.Text = ex.Message;
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            string strCmd = "select UName from Users where Uname ='" + email.Text+"'";
            SqlCommand cmd = new SqlCommand(strCmd, con);
            SqlDataAdapter dtadp = new SqlDataAdapter();
            dtadp.SelectCommand = cmd;
            DataTable dt = new DataTable();
            dtadp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //EmpID found = Employee is already  exist;
                Label2.Text = "User is already exist";
            }
            else
            {
                //Call Save Employee Method 
                Register();
            }
        }
        catch (Exception ex)
        {
            Label2.Text = ex.Message;
        }
    }
}


   