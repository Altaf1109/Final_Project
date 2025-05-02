using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");

        }
        else
        {
            if (!Page.IsPostBack)
            {
                Loadcars();
            }

        }
    }
    private void Loadcars()
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        string strcmd = " select Cars.CarID,Cars.Year,Cars.Fuel,Cars.Transmission,Cars.KMDriven,Cars.NoOfOweners,Cars.Description,Cars.CatID, " +
            " Cars.UserID,Cars.Dated,Cars.Title,Cars.Price,Cars.Brand,CarsInfo.PicPath1,CarsInfo.Country,CarsInfo.State,CarsInfo.City,Cars.CatID from Cars inner join CarsInfo on Cars.CarID = CarsInfo.PicID where Cars.UserID ='" + Session["Uname"] + "'";
        SqlCommand cmd = new SqlCommand(strcmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Carsbtn.Visible = true;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Carsbtn.Visible = false;
        }



        string strcon1 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con1 = new SqlConnection(strcon1);
        string strcmd1 = "select Bikes.BikeID,Bikes.Brand,Bikes.Year,Bikes.KMDriven,Bikes.Title,Bikes.Description,Bikes.Price,Bikes.UserID,Bikes.Dated, " +
                       " BikesInfo.PicPath1,BikesInfo.PicPath2,BikesInfo.PicPath3,BikesInfo.PicPath4,BikesInfo.PicPath5,BikesInfo.PicPath6,BikesInfo.Country,BikesInfo.State," +
                       " BikesInfo.City from Bikes inner join BikesInfo on Bikes.BikeID = BikesInfo.BikeID where Bikes.UserID ='" + Session["UName"] + "'";
        SqlCommand cmd1 = new SqlCommand(strcmd1, con1);
        SqlDataAdapter dtadp1 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd1;
        DataTable dt1 = new DataTable();
        dtadp1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            Bikesbtn.Visible = true;
            GridView2.DataSource = dt1;
            GridView2.DataBind();
        }
        else
        {
            Bikesbtn.Visible = false;
        }



        string strcon2 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con2 = new SqlConnection(strcon2);
        string strcmd2 = "select Electronics.EID,Electronics.Title,Electronics.Description,Electronics.Price,Electronics.CatID,Electronics.UserID,Electronics.Dated,ElectronicsInfo.PicID, " +
                       " ElectronicsInfo.PicPath1,ElectronicsInfo.PicPath2,ElectronicsInfo.PicPath3,ElectronicsInfo.PicPath4,ElectronicsInfo.PicPath5,ElectronicsInfo.PicPath6,ElectronicsInfo.Country,ElectronicsInfo.State," +
                       " ElectronicsInfo.City from Electronics inner join ElectronicsInfo on Electronics.EID = ElectronicsInfo.EID where Electronics.UserID ='" + Session["UName"] + "'";
        SqlCommand cmd2 = new SqlCommand(strcmd2, con2);
        SqlDataAdapter dtadp2 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd2;
        DataTable dt2 = new DataTable();
        dtadp1.Fill(dt2);
        if (dt2.Rows.Count > 0)
        {
            Elecbtn.Visible = true;
            GridView3.DataSource = dt2;
            GridView3.DataBind();
        }
        else
        {
            Elecbtn.Visible = false;
        }


        string strcon3 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con3 = new SqlConnection(strcon3);
        string strcmd3 = "select Furniture.FuID,Furniture.Title,Furniture.Description,Furniture.Price,Furniture.CatID,Furniture.UserID,Furniture.Dated,FurnitureInfo.PicID, " +
                       " FurnitureInfo.PicPath1,FurnitureInfo.PicPath2,FurnitureInfo.PicPath3,FurnitureInfo.PicPath4,FurnitureInfo.PicPath5,FurnitureInfo.PicPath6,FurnitureInfo.Country,FurnitureInfo.State," +
                       " FurnitureInfo.City from Furniture inner join FurnitureInfo on Furniture.FuID = FurnitureInfo.FID where Furniture.UserID ='" + Session["UName"] + "'";
        SqlCommand cmd3 = new SqlCommand(strcmd3, con3);
        SqlDataAdapter dtadp3 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd3;
        DataTable dt3 = new DataTable();
        dtadp1.Fill(dt3);
        if (dt3.Rows.Count > 0)
        {
            Furbtn.Visible = true;
            GridView4.DataSource = dt3;
            GridView4.DataBind();
        }
        else
        {
            Furbtn.Visible = false;
        }


        string strcon4 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con4 = new SqlConnection(strcon4);
        string strcmd4 = "select Mobiles.MobID,Mobiles.Title,Mobiles.Brand,Mobiles.Description,Mobiles.Price,Mobiles.CatID,Mobiles.UserID,Mobiles.Dated,MobileInfo.PicID, " +
                       " MobileInfo.PicPath,MobileInfo.PicPath2,MobileInfo.PicPath3,MobileInfo.PicPath4,MobileInfo.PicPath5,MobileInfo.PicPath6,MobileInfo.Country,MobileInfo.State," +
                       " MobileInfo.City from Mobiles inner join MobileInfo on Mobiles.MobID = MobileInfo.MobID where Mobiles.UserID ='" + Session["UName"] + "'";
        SqlCommand cmd4 = new SqlCommand(strcmd4, con4);
        SqlDataAdapter dtadp4 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd4;
        DataTable dt4 = new DataTable();
        dtadp1.Fill(dt4);
        if (dt4.Rows.Count > 0)
        {
            GridView5.DataSource = dt4;
            GridView5.DataBind();
        }
        else
        {
            mblbtn.Visible = false;
        }


    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string prodID = "";
        int index = 0;

        if (e.CommandName == "Del")
        {
            index = Convert.ToInt32(e.CommandArgument);
            prodID = GridView1.Rows[index].Cells[0].Text;
            string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            string strCmd = "delete from Cars where CarID='" + prodID + "';Delete from CarsInfo where PicID='" + prodID + "'";
            SqlCommand cmd = new SqlCommand(strCmd, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Loadcars();
            Commons.MsgBox("Ad Deleted Successfully");


        }
    }
}