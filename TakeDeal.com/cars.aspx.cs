using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class cars : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");

        }
        else
        {

            txtName.Text = Session["FullName"].ToString();
            if (Session["Mobile"].ToString() != "")
            {
                mobileNo.Text = Session["Mobile"].ToString();
            }
            if (!Page.IsPostBack)
            {
                LoadCountries();


            }

        }
    }
    private void LoadCountries()
    {
        string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strCon);
        string strCmd = "Select id,countryCode,name from countries";
        SqlCommand cmd = new SqlCommand(strCmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        Country.DataTextField = "name";
        Country.DataValueField = "Id";
        Country.DataSource = dt;
        Country.DataBind();
    }
    private void LoadStates()
    {
        string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strCon);
        string strCmd = "Select id,country_id,name from states where country_id='" + Country.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(strCmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        State.DataTextField = "name";
        State.DataValueField = "Id";
        State.DataSource = dt;
        State.DataBind();
    }
    private void LoadCities()
    {
        string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strCon);
        string strCmd = "Select id,city,state_id from cities where state_id = '" + State.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(strCmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        City.DataTextField = "city";
        City.DataValueField = "state_id";
        City.DataSource = dt;
        City.DataBind();
    }
    private void Insert()
    {
        try
        {
            if (!((Convert.ToInt16(Price.Text) > 0)))
            {
                lblPrice.Visible = true;
                lblPrice.Text = "Enter Correct Price ";
            }

            else if (ddlBrand.SelectedValue == "Select")
            {
                Label17.Visible = true;
            }
            else if (ddlFuel.SelectedValue == "Select")
            {
                Label18.Visible = true;
            }
            else if (ddlTransmission.SelectedValue == "Select")
            {
                Label19.Visible = true;
            }
            else if (ddlOwener.SelectedValue == "Select")
            {
                Label20.Visible = true;
            }
            else if (Country.SelectedValue == "Select")
            {
                lblCountry.Text = "Select Country";
            }
            else if (State.SelectedValue == "Select")
            {
                lblState.Text = "Select State";

            }
            else if (City.SelectedValue == "Select")
            {
                lblCity.Text = "Select City";

            }
            
            else
            {
                string date = DateTime.Now.ToString("MM-dd-yyyy");


                string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                string strCmd = "insert into Cars(Brand,Year,Fuel,Transmission,KMDriven,NoOfOweners,Title,Description,Price,CatID,UserID,Dated) values('" + ddlBrand.SelectedValue + "'," + txtYear.Text + ",'" + ddlFuel.SelectedValue + "','" + ddlTransmission.SelectedValue + "'," + txtKM.Text + ",'" + ddlOwener.SelectedValue + "','" + txtTitle.Text + "','" + txtDescription.Text + "'," + Price.Text + "," + 1 + ",'" + Session["UName"].ToString() + "','" + date + "')";

                SqlCommand cmd = new SqlCommand(strCmd, con);
                con.Open();
                cmd.ExecuteNonQuery();//Execute the query across the connection
                con.Close();
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
        }

        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    private void Insert2()
    {

        string strDir = Guid.NewGuid().ToString();
        string strSaveName1 = "", strSaveName2 = "", strSaveName3 = "", strSaveName4 = "", strSaveName5 = "", strSaveName6 = "";
        if (FileUpload1.HasFile || FileUpload2.HasFile || FileUpload3.HasFile || FileUpload4.HasFile || FileUpload5.HasFile || FileUpload6.HasFile)
        {
            string strExt1 = Path.GetExtension(FileUpload1.FileName);
            string strExt2 = Path.GetExtension(FileUpload2.FileName);
            string strExt3 = Path.GetExtension(FileUpload3.FileName);
            string strExt4 = Path.GetExtension(FileUpload4.FileName);
            string strExt5 = Path.GetExtension(FileUpload5.FileName);
            string strExt6 = Path.GetExtension(FileUpload6.FileName);
            strExt1 = strExt1.ToLower();
            strExt2 = strExt2.ToLower();
            strExt3 = strExt3.ToLower();
            strExt4 = strExt4.ToLower();
            strExt5 = strExt5.ToLower();
            strExt6 = strExt6.ToLower();
            if (FileUpload1.HasFile)
            {
                if (strExt1 == ".jpg" || strExt1 == ".png" || strExt1 == ".jpeg" || strExt1 == ".gpg" || strExt1 == ".gpeg" || strExt1 == ".bmp" || strExt1 == ".gif" || strExt1 == ".tif")
                {
                    string strFileName1 = Path.GetFileName(FileUpload1.FileName);
                    string strpath1 = Server.MapPath("~//Files//");
                    Directory.CreateDirectory(strpath1 + strDir);
                    strSaveName1 = "~//Files//" + strDir + "//" + strFileName1;
                    strpath1 = Server.MapPath("~//Files//" + strDir + "//");
                    FileUpload1.SaveAs(strpath1 + FileUpload1.FileName);
                }
                else
                {
                    Label16.Visible = true;
                    Label16.Text = "Select Only Images";
                }
            }
            if (FileUpload2.HasFile)
            {
                if (strExt2 == ".jpg" || strExt2 == ".png" || strExt2 == ".jpeg" || strExt2 == ".gpg" || strExt2 == ".gpeg" || strExt2 == ".bmp" || strExt2 == ".gif" || strExt2 == ".tif")
                {
                    string strFileName2 = Path.GetFileName(FileUpload2.FileName);
                    string strpath2 = Server.MapPath("~//Files//");

                    Directory.CreateDirectory(strpath2 + strDir);
                    strSaveName2 = "~//Files//" + strDir + "//" + strFileName2;
                    strpath2 = Server.MapPath("~//Files//" + strDir + "//");
                    FileUpload2.SaveAs(strpath2 + FileUpload2.FileName);
                }
                else
                {
                    Label16.Visible = true;
                    Label16.Text = "Select Only Images";
                }
            }
            if (FileUpload3.HasFile)
            {
                if (strExt3 == ".jpg" || strExt3 == ".png" || strExt3 == ".jpeg" || strExt3 == ".gpg" || strExt3 == ".gpeg" || strExt3 == ".bmp" || strExt3 == ".gif" || strExt3 == ".tif")
                {
                    string strFileName3 = Path.GetFileName(FileUpload3.FileName);
                    string strpath3 = Server.MapPath("~//Files//");

                    Directory.CreateDirectory(strpath3 + strDir);
                    strSaveName3 = "~//Files//" + strDir + "//" + strFileName3;
                    strpath3 = Server.MapPath("~//Files//" + strDir + "//");
                    FileUpload3.SaveAs(strpath3 + FileUpload3.FileName);
                }
                else
                {
                    Label16.Visible = true;
                    Label16.Text = "Select Only Images";
                }
            }
            if (FileUpload4.HasFile)
            {
                if (strExt4 == ".jpg" || strExt4 == ".png" || strExt4 == ".jpeg" || strExt4 == ".gpg" || strExt4 == ".gpeg" || strExt4 == ".bmp" || strExt4 == ".gif" || strExt4 == ".tif")
                {
                    string strFileName4 = Path.GetFileName(FileUpload4.FileName);
                    string strpath4 = Server.MapPath("~//Files//");

                    Directory.CreateDirectory(strpath4 + strDir);
                    strSaveName4 = "~//Files//" + strDir + "//" + strFileName4;
                    strpath4 = Server.MapPath("~//Files//" + strDir + "//");
                    FileUpload4.SaveAs(strpath4 + FileUpload4.FileName);
                }
                else
                {
                    Label16.Visible = true;
                    Label16.Text = "Select Only Images";
                }
            }
            if (FileUpload4.HasFile)
            {
                if (strExt5 == ".jpg" || strExt5 == ".png" || strExt5 == ".jpeg" || strExt5 == ".gpg" || strExt5 == ".gpeg" || strExt5 == ".bmp" || strExt5 == ".gif" || strExt5 == ".tif")
                {
                    string strFileName5 = Path.GetFileName(FileUpload5.FileName);
                    string strpath5 = Server.MapPath("~//Files//");

                    Directory.CreateDirectory(strpath5 + strDir);
                    strSaveName5 = "~//Files//" + strDir + "//" + strFileName5;
                    strpath5 = Server.MapPath("~//Files//" + strDir + "//");
                    FileUpload5.SaveAs(strpath5 + FileUpload5.FileName);
                }
                else
                {
                    Label16.Visible = true;
                    Label16.Text = "Select Only Images";
                }
            }
            if (FileUpload6.HasFile)
            {
                if (strExt6 == ".jpg" || strExt6 == ".png" || strExt6 == ".jpeg" || strExt6 == ".gpg" || strExt6 == ".gpeg" || strExt6 == ".bmp" || strExt6 == ".gif" || strExt6 == ".tif")
                {
                    string strFileName6 = Path.GetFileName(FileUpload6.FileName);
                    string strpath6 = Server.MapPath("~//Files//");

                    Directory.CreateDirectory(strpath6 + strDir);
                    strSaveName6 = "~//Files//" + strDir + "//" + strFileName6;
                    strpath6 = Server.MapPath("~//Files//" + strDir + "//");
                    FileUpload6.SaveAs(strpath6 + FileUpload6.FileName);
                }
                else
                {
                    Label16.Visible = true;
                    Label16.Text = "Select Only Images";
                }
            }
               
        }
        else
        {
            Label16.Visible = true;
            Label16.Text = "Select Image for Paint";
        }


        if (Label16.Text == "Select Only Images" )
        {
            Label16.Visible = true;
            Label16.Text = "Select Only Images";
        }
        else if(Label16.Text == "Select Image for Paint")
        {
            Label16.Visible = true;
            Label16.Text = "Select Image for Paint";
        }
        else
        {
            string strcon0 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con0 = new SqlConnection(strcon0);
            string strcmd0 = "SELECT TOP 1 * FROM Cars ORDER BY CarID DESC";
            SqlCommand cmd0 = new SqlCommand(strcmd0, con0);
            SqlDataAdapter dtadp0 = new SqlDataAdapter();

            dtadp0.SelectCommand = cmd0;
            DataTable dt1 = new DataTable();
            dtadp0.Fill(dt1);
            int id = Convert.ToInt32(dt1.Rows[0]["CarID"]);


            string strCon4 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con4 = new SqlConnection(strCon4);
            string strCmd1 = "insert into CarsInfo(PicPath1,PicPath2,PicPath3,PicPath4,PicPath5,PicPath6,Country,State,City,CarID) values('" + /*file1.Value*/strSaveName1 + "','" + strSaveName2 + "','" + strSaveName3 + "','" + strSaveName4 + "','" + strSaveName5 + "','" + strSaveName6 + "','" + Country.SelectedItem.Text + "','" + State.SelectedItem.Text + "','" + City.SelectedItem.Text + "'," + id + ")";
            SqlCommand cmd1 = new SqlCommand(strCmd1, con4);
            con4.Open();
            cmd1.ExecuteNonQuery();
            con4.Close();
            Response.Write("<script>alert('Add Posted')</script>");

            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }


    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Insert();
           
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        txtYear.Text = "";
        txtTitle.Text = "";
        txtKM.Text = "";
        txtDescription.Text = "";
        Price.Text = "";
        if (Country.SelectedItem.Text.ToString() == "Select")
        {
            Label16.Visible = true;
            Label16.Text = "Select Country";

        }
        else if (Country.SelectedItem.Text.ToString() != "India")
        {
            Label16.Visible = true;
            Label16.Text = "Select only India";

        }
        else if (State.SelectedItem.Text.ToString() == "")
        {
            Label16.Visible = true;
            Label16.Text = "Select Any State";

        }
        else if (City.SelectedItem.Text.ToString() == null)
        {
            Label16.Visible = true;
            Label16.Text = "Select Any State";
        }
        else
        {
            Insert2();
        }
        

        

    }

    protected void Country_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadStates();
    }

    protected void State_SelectedIndexChanged1(object sender, EventArgs e)
    {
        LoadCities();
    }
}

