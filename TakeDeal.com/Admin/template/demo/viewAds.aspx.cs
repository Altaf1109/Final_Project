using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_template_demo_viewAds : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Load();
        }
    }
    private void Load()
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        string strcmd = "select Cars.Year,Cars.Fuel,Cars.Transmission,Cars.KMDriven,Cars.NoOfOweners,Cars.Description,Cars.CatID,Cars.UserID,Cars.Dated,Cars.Title,Cars.Price,Cars.Brand,CarsInfo.PicPath1,CarsInfo.Country,CarsInfo.State,CarsInfo.City,Cars.CatID from Cars inner join CarsInfo on Cars.CarID = CarsInfo.PicID ";
        SqlCommand cmd = new SqlCommand(strcmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();


        string strcon1 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con1 = new SqlConnection(strcon1);
        string strcmd1 = "select Bikes.BikeID,Bikes.Brand,Bikes.Year,Bikes.KMDriven,Bikes.Title,Bikes.Description,Bikes.Price,Bikes.UserID,Bikes.Dated, " +
                       " BikesInfo.PicPath1,BikesInfo.PicPath2,BikesInfo.PicPath3,BikesInfo.PicPath4,BikesInfo.PicPath5,BikesInfo.PicPath6,BikesInfo.Country,BikesInfo.State," +
                       " BikesInfo.City from Bikes inner join BikesInfo on Bikes.BikeID = BikesInfo.BikeID ";
        SqlCommand cmd1 = new SqlCommand(strcmd1, con1);
        SqlDataAdapter dtadp1 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd1;
        DataTable dt1 = new DataTable();
        dtadp1.Fill(dt1);
        GridView2.DataSource = dt1;
        GridView2.DataBind();



        string strcon2 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con2 = new SqlConnection(strcon2);
        string strcmd2 = "select Electronics.EID,Electronics.Title,Electronics.Description,Electronics.Price,Electronics.CatID,Electronics.UserID,Electronics.Dated,ElectronicsInfo.PicID, " +
                       " ElectronicsInfo.PicPath1,ElectronicsInfo.PicPath2,ElectronicsInfo.PicPath3,ElectronicsInfo.PicPath4,ElectronicsInfo.PicPath5,ElectronicsInfo.PicPath6,ElectronicsInfo.Country,ElectronicsInfo.State," +
                       " ElectronicsInfo.City from Electronics inner join ElectronicsInfo on Electronics.EID = ElectronicsInfo.EID ";
        SqlCommand cmd2 = new SqlCommand(strcmd2, con2);
        SqlDataAdapter dtadp2 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd2;
        DataTable dt2 = new DataTable();
        dtadp1.Fill(dt2);
        GridView3.DataSource = dt2;
        GridView3.DataBind();


        string strcon3 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con3 = new SqlConnection(strcon3);
        string strcmd3 = "select Furniture.FuID,Furniture.Title,Furniture.Description,Furniture.Price,Furniture.CatID,Furniture.UserID,Furniture.Dated,FurnitureInfo.PicID, " +
                       " FurnitureInfo.PicPath1,FurnitureInfo.PicPath2,FurnitureInfo.PicPath3,FurnitureInfo.PicPath4,FurnitureInfo.PicPath5,FurnitureInfo.PicPath6,FurnitureInfo.Country,FurnitureInfo.State," +
                       " FurnitureInfo.City from Furniture inner join FurnitureInfo on Furniture.FuID = FurnitureInfo.FID ";
        SqlCommand cmd3 = new SqlCommand(strcmd3, con3);
        SqlDataAdapter dtadp3 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd3;
        DataTable dt3 = new DataTable();
        dtadp1.Fill(dt3);
        GridView4.DataSource = dt3;
        GridView4.DataBind();


        string strcon4 = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con4 = new SqlConnection(strcon4);
        string strcmd4 = "select Mobiles.MobID,Mobiles.Title,Mobiles.Brand,Mobiles.Description,Mobiles.Price,Mobiles.CatID,Mobiles.UserID,Mobiles.Dated,MobileInfo.PicID, " +
                       " MobileInfo.PicPath,MobileInfo.PicPath2,MobileInfo.PicPath3,MobileInfo.PicPath4,MobileInfo.PicPath5,MobileInfo.PicPath6,MobileInfo.Country,MobileInfo.State," +
                       " MobileInfo.City from Mobiles inner join MobileInfo on Mobiles.MobID = MobileInfo.MobID  ";
        SqlCommand cmd4 = new SqlCommand(strcmd4, con4);
        SqlDataAdapter dtadp4 = new SqlDataAdapter();
        dtadp1.SelectCommand = cmd4;
        DataTable dt4 = new DataTable();
        dtadp1.Fill(dt4);
        GridView5.DataSource = dt4;
        GridView5.DataBind();


    }
}