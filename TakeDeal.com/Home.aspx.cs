using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");

        }
        else
        {
            LoadCard();
        }
    }
    private void LoadCard()
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        
        try
        {
            //07May
            string strcmd = "select Cars.CarID,Cars.Title,Cars.Price,Cars.Brand,CarsInfo.PicPath1,Cars.CatID from Cars inner join CarsInfo on Cars.CarID = CarsInfo.PicID";
            SqlCommand cmd = new SqlCommand(strcmd, con);
            DataTable dt = new DataTable();

            dtadp.SelectCommand = cmd;
            dtadp.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        try
        {
            string strcmd1 = "select Bikes.BikeID,Bikes.Title,Bikes.Price,Bikes.Brand,BikesInfo.PicPath1,Bikes.CatID from Bikes inner join BikesInfo on Bikes.BikeID = BikesInfo.BikeID";
            SqlCommand cmd1 = new SqlCommand(strcmd1, con);
            DataTable dt1 = new DataTable();

            dtadp.SelectCommand = cmd1;
            
            dtadp.Fill(dt1);
            DataList2.DataSource = dt1;
            DataList2.DataBind();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        try
        {
            string strcmd1 = "select Electronics.EID,Electronics.Title,Electronics.Price,ElectronicsInfo.PicPath1,Electronics.CatID from Electronics inner join ElectronicsInfo on Electronics.EID = ElectronicsInfo.EID";
            SqlCommand cmd1 = new SqlCommand(strcmd1, con);
            DataTable dt2 = new DataTable();

            dtadp.SelectCommand = cmd1;

            dtadp.Fill(dt2);
            DataList3.DataSource = dt2;
            DataList3.DataBind();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        try
        {
            string strcmd1 = "select Mobiles.MobID,Mobiles.Title,Mobiles.Price,MobileInfo.PicPath,Mobiles.CatID from Mobiles inner join MobileInfo on Mobiles.MobID =MobileInfo.MobID";
            SqlCommand cmd1 = new SqlCommand(strcmd1, con);
            DataTable dt3 = new DataTable();

            dtadp.SelectCommand = cmd1;

            dtadp.Fill(dt3);
            DataList4.DataSource = dt3;
            DataList4.DataBind();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        try
        {
            string strcmd1 = "select Furniture.FuID,Furniture.Title,Furniture.Price,FurnitureInfo.PicPath1,Furniture.CatID from Furniture inner join FurnitureInfo on Furniture.FuID =FurnitureInfo.FID";
            SqlCommand cmd1 = new SqlCommand(strcmd1, con);
            DataTable dt4 = new DataTable();

            dtadp.SelectCommand = cmd1;

            dtadp.Fill(dt4);
            DataList5.DataSource = dt4;
            DataList5.DataBind();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        try
        {
            string strcmd1 = "select Others.OID,Others.Title,Others.Price,OthersInfo.PicPath1,Others.CatID from Others inner join OthersInfo on Others.OID =OthersInfo.OID";
            SqlCommand cmd1 = new SqlCommand(strcmd1, con);
            DataTable dt5 = new DataTable();

            dtadp.SelectCommand = cmd1;

            dtadp.Fill(dt5);
            DataList6.DataSource = dt5;
            DataList6.DataBind();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() == "1")
        {

            DataList2.Visible = false;
            DataList3.Visible = false;
            DataList4.Visible = false;
            DataList5.Visible = false;
            DataList1.Visible = true;
        }
        if (DropDownList1.SelectedValue.ToString() == "2")
        {

            DataList2.Visible = true;
            DataList3.Visible = false;
            DataList4.Visible = false;
            DataList5.Visible = false;
            DataList1.Visible = false;
        }
        if (DropDownList1.SelectedValue.ToString() == "3")
        {

            DataList2.Visible = false;
            DataList3.Visible = false;
            DataList4.Visible = true;
            DataList5.Visible = false;
            DataList1.Visible = false;
        }
        if (DropDownList1.SelectedValue.ToString() == "4")
        {

            DataList2.Visible = false;
            DataList3.Visible = true;
            DataList4.Visible = false;
            DataList5.Visible = false;
            DataList1.Visible = false;
        }
        if (DropDownList1.SelectedValue.ToString() == "5")
        {

            DataList2.Visible = false;
            DataList3.Visible = false;
            DataList4.Visible = false;
            DataList5.Visible = true;
            DataList1.Visible = false;
        }
        if (DropDownList1.SelectedValue.ToString() == "6")
        {
            DataList6.Visible = true;
            DataList2.Visible = false;
            DataList3.Visible = false;
            DataList4.Visible = false;
            DataList5.Visible = false;
            DataList1.Visible = false;
        }
    }
}