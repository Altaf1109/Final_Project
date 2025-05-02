using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");

        }
        else
        {
            LoadInfo();
        }
    }
    private void LoadInfo()
    {
        string strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        string strcmd = "select  users.mobile,users.uname,users.upassword,users.seqque,users.seqans,users.fullname,usersinfo.description,usersinfo.picpath,usersinfo.address,usersinfo.userid,usersinfo.description from users inner join usersinfo on users.uname=usersinfo.userid where uname = '" + Session["uname"] + "'";
        SqlCommand cmd = new SqlCommand(strcmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();

        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            // label1.text = dt.rows[0]["fullname"].tostring();
            Email.Text = dt.Rows[0]["uname"].ToString();
            FullName.Text = dt.Rows[0]["fullname"].ToString();
            //Address.Text = dt.Rows[0]["address"].ToString();
            //question.Text = dt.Rows[0]["seqque"].ToString();
            //Answer.Text = dt.Rows[0]["seqans"].ToString();
            //Description.Text = dt.Rows[0]["description"].ToString();
            Label4.Text = dt.Rows[0]["fullname"].ToString();
            //Mobile.Text = dt.Rows[0]["mobile"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (question.SelectedValue == "Select")
            {
                Label6.Text = "Select any Question..!";
            }
            else if (Email.Text == "")
            {
                Label6.Text = "Enter Email..!";
            }
            else
            {
                string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                SqlConnection con = new SqlConnection(strcon);
                string strcmd = "Update Users set Mobile='" + Mobile.Text + "',SeqQue='" + question.SelectedValue + "',SeqAns='" + Answer.Text + "' where UName='"+Session["UName"]+"'; Update UsersInfo SET Address='"+Address.Text+"',Description='"+Description.Text+"' where UserID='"+Session["UName"]+"'";
                SqlCommand cmd = new SqlCommand(strcmd, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/UserProfile.aspx");
                
            }
        }
        catch (Exception ex )
        {
            Mobile.Text = ex.Message;
        }
        

    }
}