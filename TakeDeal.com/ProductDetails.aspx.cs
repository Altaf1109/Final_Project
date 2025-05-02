using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count == 0)
        {
            Response.Redirect("~/Admin/template/demo/pages/samples/NotFound.aspx");
        }


        if (Request.QueryString["catID"] != null && Request.QueryString["carID"] != null)
        {
            if (Session["RoleID"].ToString() != "2")
            {
                Response.Redirect("~/Login.aspx");

            }

            string id = Request.QueryString["catID"].ToString();
            string cid = Request.QueryString["carID"].ToString();
            if (id == "1")
            {
                PanelMobiles.Visible = false;
                Panel1.Visible = false;
                CarsPanel.Visible = true;
                try
                {
                    string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                    SqlConnection con = new SqlConnection(strcon);
                    string strcmd = "select Cars.Year,Cars.Fuel,Cars.Transmission,Cars.KMDriven,Cars.NoOfOweners,Cars.Description,Cars.CatID,Cars.UserID,Cars.Dated,Cars.Title,Cars.Price,Cars.Brand,CarsInfo.PicPath1,CarsInfo.PicPath2,CarsInfo.PicPath3,CarsInfo.PicPath4,CarsInfo.PicPath5,CarsInfo.PicPath6,CarsInfo.Country,CarsInfo.State,CarsInfo.City,Cars.CatID from Cars inner join CarsInfo on Cars.CarID = CarsInfo.PicID where Cars.CarID ='" + cid + "'";
                    SqlCommand cmd = new SqlCommand(strcmd, con);
                    SqlDataAdapter dtadp = new SqlDataAdapter();

                    dtadp.SelectCommand = cmd;
                    DataTable dt = new DataTable();
                    dtadp.Fill(dt);
                    Price.Text = dt.Rows[0]["Price"].ToString();
                    title1.Text = dt.Rows[0]["Title"].ToString();
                    transmission.Text = dt.Rows[0]["Transmission"].ToString();
                    KMDriven.Text = dt.Rows[0]["KMDriven"].ToString();
                    Owener.Text = dt.Rows[0]["NoOfOweners"].ToString();
                    dis.Text = dt.Rows[0]["Description"].ToString();
                    PostedDate.Text = dt.Rows[0]["Dated"].ToString();
                    title1.Text = dt.Rows[0]["Title"].ToString();
                    Brand.Text = dt.Rows[0]["Brand"].ToString();
                    Fuel.Text = dt.Rows[0]["Fuel"].ToString();
                    SellName.Text = dt.Rows[0]["UserID"].ToString();
                    PostingDate.Text = dt.Rows[0]["Dated"].ToString();
                    Location.Text = dt.Rows[0]["City"].ToString();
                    city.Text = dt.Rows[0]["City"].ToString();
                    state.Text = dt.Rows[0]["State"].ToString();
                    country.Text = dt.Rows[0]["Country"].ToString();
                    string str1 = dt.Rows[0]["PicPath1"].ToString();
                    string str2 = dt.Rows[0]["PicPath2"].ToString();
                    string str3 = dt.Rows[0]["PicPath3"].ToString();
                    string str4 = dt.Rows[0]["PicPath4"].ToString();
                    string str5 = dt.Rows[0]["PicPath5"].ToString();
                    string str6 = dt.Rows[0]["PicPath6"].ToString();
                    if (str1!="")
                    {
                        img1.Src = str1;
                    }
                    else
                    {
                        img1.Visible = false;
                    }
                    if (str2 != "")
                    {
                        img2.Src = str2;
                    }
                    else
                    {
                        img2.Visible = false;
                    }
                    if(str3 != "")
                    {
                        img3.Src = str3;
                    }
                    else
                    {
                        img3.Visible = false;
                    }
                    if (SellName.Text == Session["UName"].ToString())
                    {
                        Button1.Visible = false;
                    }

                }
                catch (Exception ex)
                {
                    Price.Text = ex.Message;
                }
            }
            if (id == "2")
            {
                CarsPanel.Visible = false;
                Panel1.Visible = true;

                try
                {
                    string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                    SqlConnection con = new SqlConnection(strcon);
                    string strcmd = "select Bikes.BikeID,Bikes.Brand,Bikes.Year,Bikes.KMDriven,Bikes.Title,Bikes.Description,Bikes.Price,Bikes.UserID,Bikes.Dated, " +
                        " BikesInfo.PicPath1,BikesInfo.PicPath2,BikesInfo.PicPath3,BikesInfo.PicPath4,BikesInfo.PicPath5,BikesInfo.PicPath6,BikesInfo.Country,BikesInfo.State," +
                        " BikesInfo.City from Bikes inner join BikesInfo on Bikes.BikeID = BikesInfo.BikeID where Bikes.BikeID ='" + cid + "'";
                    SqlCommand cmd1 = new SqlCommand(strcmd, con);
                    SqlDataAdapter dtadp = new SqlDataAdapter();

                    dtadp.SelectCommand = cmd1;
                    DataTable dt1 = new DataTable();
                    dtadp.Fill(dt1);
                    SellName.Text = dt1.Rows[0]["UserID"].ToString();
                    Label19.Text = dt1.Rows[0]["Year"].ToString();
                    Price.Text = dt1.Rows[0]["Price"].ToString();
                    title1.Text = dt1.Rows[0]["Title"].ToString();
                    Label21.Text = dt1.Rows[0]["KMDriven"].ToString();
                    Label12.Text = dt1.Rows[0]["Description"].ToString();
                    PostedDate.Text = dt1.Rows[0]["Dated"].ToString();
                    title1.Text = dt1.Rows[0]["Title"].ToString();
                    Label15.Text = dt1.Rows[0]["Brand"].ToString();
                    PostingDate.Text = dt1.Rows[0]["Dated"].ToString();
                    Location.Text = dt1.Rows[0]["City"].ToString();
                    SellName.Text = dt1.Rows[0]["UserID"].ToString();
                    city.Text = dt1.Rows[0]["City"].ToString();
                    state.Text = dt1.Rows[0]["State"].ToString();
                    country.Text = dt1.Rows[0]["Country"].ToString();
                    string str1 = dt1.Rows[0]["PicPath1"].ToString();
                    string str2 = dt1.Rows[0]["PicPath2"].ToString();
                    string str3 = dt1.Rows[0]["PicPath3"].ToString();
                    string str4 = dt1.Rows[0]["PicPath4"].ToString();
                    string str5 = dt1.Rows[0]["PicPath5"].ToString();
                    string str6 = dt1.Rows[0]["PicPath6"].ToString();
                    if (str1 != "")
                    {
                        img1.Src = str1;
                    }
                    else
                    {
                        img1.Visible = false;
                    }
                    if (str2 != "")
                    {
                        img2.Src = str2;
                    }
                    else
                    {
                        img2.Visible = false;
                    }
                    if (str3 != "")
                    {
                        img3.Src = str3;
                    }
                    else
                    {
                        img3.Visible = false;
                    }
                    if (SellName.Text == Session["UName"].ToString())
                    {
                        Button1.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Price.Text = ex.Message;
                }
            }
            if (id == "3")
            {
                CarsPanel.Visible = false;
                Panel1.Visible = false;
                PanelMobiles.Visible = true;

                try
                {
                    string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                    SqlConnection con = new SqlConnection(strcon);
                    string strcmd = "select Mobiles.MobID,Mobiles.Brand,Mobiles.Title,Mobiles.Description,Mobiles.Price,Mobiles.CatID,Mobiles.UserID,Mobiles.Dated ," +
                        " MobileInfo.PicPath,MobileInfo.PicPath2,MobileInfo.PicPath3,MobileInfo.PicPath4,MobileInfo.PicPath5,MobileInfo.PicPath6,MobileInfo.Country,MobileInfo.State," +
                        " MobileInfo.City from Mobiles inner join MobileInfo on Mobiles.MobID = MobileInfo.MobID where Mobiles.MobID ='" + cid + "'";
                    SqlCommand cmd1 = new SqlCommand(strcmd, con);
                    SqlDataAdapter dtadp = new SqlDataAdapter();

                    dtadp.SelectCommand = cmd1;
                    DataTable dt1 = new DataTable();
                    dtadp.Fill(dt1);

                    Price.Text = dt1.Rows[0]["Price"].ToString();
                    title1.Text = dt1.Rows[0]["Title"].ToString();
                    Label4.Text = dt1.Rows[0]["Brand"].ToString();
                    Label13.Text = dt1.Rows[0]["Description"].ToString();
                    PostedDate.Text = dt1.Rows[0]["Dated"].ToString();
                    SellName.Text = dt1.Rows[0]["UserID"].ToString();

                    //title1.Text = dt1.Rows[0]["Title"].ToString();

                    PostingDate.Text = dt1.Rows[0]["Dated"].ToString();
                    //Location.Text = dt1.Rows[0]["City"].ToString();
                    city.Text = dt1.Rows[0]["City"].ToString();
                    state.Text = dt1.Rows[0]["State"].ToString();
                    country.Text = dt1.Rows[0]["Country"].ToString();
                    string str1 = dt1.Rows[0]["PicPath"].ToString();
                    string str2 = dt1.Rows[0]["PicPath2"].ToString();

                    string str3 = dt1.Rows[0]["PicPath3"].ToString();
                    string str4 = dt1.Rows[0]["PicPath4"].ToString();
                    string str5 = dt1.Rows[0]["PicPath5"].ToString();
                    string str6 = dt1.Rows[0]["PicPath6"].ToString();
                    if (str1 != "")
                    {
                        img1.Src = str1;
                    }
                    else
                    {
                        img1.Visible = false;
                    }
                    if (str2 != "")
                    {
                        img2.Src = str2;
                    }
                    else
                    {
                        img2.Visible = false;
                    }
                    if (str3 != "")
                    {
                        img3.Src = str3;
                    }
                    else
                    {
                        img3.Visible = false;
                    }
                    if (SellName.Text == Session["UName"].ToString())
                    {
                        Button1.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Price.Text = ex.Message;
                }
            }
            if (id == "5")
            {
                CarsPanel.Visible = false;
                PanelMobiles.Visible = false;
                Panel1.Visible = false;
                PanelElectronics.Visible = true;


                try
                {
                    string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                    SqlConnection con = new SqlConnection(strcon);
                    string strcmd1 = "select Electronics.EID,Electronics.Title,Electronics.Description,Electronics.Price,Electronics.CatID,Electronics.UserID,Electronics.Dated,ElectronicsInfo.PicID, " +
                             " ElectronicsInfo.PicPath1,ElectronicsInfo.PicPath2,ElectronicsInfo.PicPath3,ElectronicsInfo.PicPath4,ElectronicsInfo.PicPath5,ElectronicsInfo.PicPath6,ElectronicsInfo.Country,ElectronicsInfo.State," +
                             " ElectronicsInfo.City from Electronics inner join ElectronicsInfo on Electronics.EID = ElectronicsInfo.EID where Electronics.EID ='" + cid + "'";
                    SqlCommand cmd1 = new SqlCommand(strcmd1, con);
                    SqlDataAdapter dtadp = new SqlDataAdapter();

                    dtadp.SelectCommand = cmd1;
                    DataTable dt1 = new DataTable();
                    dtadp.Fill(dt1);

                    Price.Text = dt1.Rows[0]["Price"].ToString();
                    title1.Text = dt1.Rows[0]["Title"].ToString();


                    SellName.Text = dt1.Rows[0]["UserID"].ToString();


                    Label24.Text = dt1.Rows[0]["Description"].ToString();
                    PostedDate.Text = dt1.Rows[0]["Dated"].ToString();

                   //Label4.Text = dt1.Rows[0]["Brand"].ToString();


                    Location.Text = dt1.Rows[0]["City"].ToString();
                    city.Text = dt1.Rows[0]["City"].ToString();
                    state.Text = dt1.Rows[0]["State"].ToString();
                    country.Text = dt1.Rows[0]["Country"].ToString();
                    string str1 = dt1.Rows[0]["PicPath1"].ToString();
                    string str2 = dt1.Rows[0]["PicPath2"].ToString();
                    string str3 = dt1.Rows[0]["PicPath3"].ToString();
                    string str4 = dt1.Rows[0]["PicPath4"].ToString();
                    string str5 = dt1.Rows[0]["PicPath5"].ToString();
                    string str6 = dt1.Rows[0]["PicPath6"].ToString();
                    if (str1 != "")
                    {
                        img1.Src = str1;
                    }
                    else
                    {
                        img1.Visible = false;
                    }
                    if (str2 != "")
                    {
                        img2.Src = str2;
                    }
                    else
                    {
                        img2.Visible = false;
                    }
                    if (str3 != "")
                    {
                        img3.Src = str3;
                    }
                    else
                    {
                        img3.Visible = false;
                    }
                    if (SellName.Text == Session["UName"].ToString())
                    {
                        Button1.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Price.Text = ex.Message;
                }
            }
            if (id == "4")
            {
                CarsPanel.Visible = false;
                PanelMobiles.Visible = false;
                Panel1.Visible = false;
                PanelElectronics.Visible = true;


                try
                {
                    string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                    SqlConnection con = new SqlConnection(strcon);
                    string strcmd1 = "select Furniture.FuID,Furniture.Title,Furniture.Description,Furniture.Price,Furniture.CatID,Furniture.UserID,Furniture.Dated,FurnitureInfo.PicID, " +
                             " FurnitureInfo.PicPath1,FurnitureInfo.PicPath2,FurnitureInfo.PicPath3,FurnitureInfo.PicPath4,FurnitureInfo.PicPath5,FurnitureInfo.PicPath6,FurnitureInfo.Country,FurnitureInfo.State," +
                             " FurnitureInfo.City from Furniture inner join FurnitureInfo on Furniture.FuID = FurnitureInfo.FID where Furniture.FuID ='" + cid + "'";
                    SqlCommand cmd1 = new SqlCommand(strcmd1, con);
                    SqlDataAdapter dtadp = new SqlDataAdapter();

                    dtadp.SelectCommand = cmd1;
                    DataTable dt1 = new DataTable();
                    dtadp.Fill(dt1);

                    Price.Text = dt1.Rows[0]["Price"].ToString();
                    title1.Text = dt1.Rows[0]["Title"].ToString();
                    SellName.Text = dt1.Rows[0]["UserID"].ToString();


                    Label24.Text = dt1.Rows[0]["Description"].ToString();
                    PostedDate.Text = dt1.Rows[0]["Dated"].ToString();

                    //Label4.Text = dt1.Rows[0]["Brand"].ToString();


                    Location.Text = dt1.Rows[0]["City"].ToString();
                    city.Text = dt1.Rows[0]["City"].ToString();
                    state.Text = dt1.Rows[0]["State"].ToString();
                    country.Text = dt1.Rows[0]["Country"].ToString();
                    string str1 = dt1.Rows[0]["PicPath1"].ToString();
                    string str2 = dt1.Rows[0]["PicPath2"].ToString();
                    SellName.Text = dt1.Rows[0]["UserID"].ToString();

                    string str3 = dt1.Rows[0]["PicPath3"].ToString();
                    string str4 = dt1.Rows[0]["PicPath4"].ToString();
                    string str5 = dt1.Rows[0]["PicPath5"].ToString();
                    string str6 = dt1.Rows[0]["PicPath6"].ToString();
                    if (str1 != "")
                    {
                        img1.Src = str1;
                    }
                    else
                    {
                        img1.Visible = false;
                    }
                    if (str2 != "")
                    {
                        img2.Src = str2;
                    }
                    else
                    {
                        img2.Visible = false;
                    }
                    if (str3 != "")
                    {
                        img3.Src = str3;
                    }
                    else
                    {
                        img3.Visible = false;
                    }
                    if (SellName.Text == Session["UName"].ToString())
                    {
                        Button1.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Price.Text = ex.Message;
                }
            }
            if (id == "6")
            {
                CarsPanel.Visible = false;
                PanelMobiles.Visible = false;
                Panel1.Visible = false;
                PanelElectronics.Visible = true;


                try
                {
                    string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                    SqlConnection con = new SqlConnection(strcon);
                    string strcmd1 = "select Others.OID,Others.Brand,Others.Title,Others.Description,Others.Price,Others.CatID,Others.UserID,Others.Dated,OthersInfo.PicID, " +
                             " OthersInfo.PicPath1,OthersInfo.PicPath2,OthersInfo.PicPath3,OthersInfo.PicPath4,OthersInfo.PicPath5,OthersInfo.PicPath6,OthersInfo.Country,OthersInfo.State," +
                             " OthersInfo.City from Others inner join OthersInfo on Others.OID = OthersInfo.OID where Others.OID ='" + cid + "'";
                    SqlCommand cmd1 = new SqlCommand(strcmd1, con);
                    SqlDataAdapter dtadp = new SqlDataAdapter();

                    dtadp.SelectCommand = cmd1;
                    DataTable dt1 = new DataTable();
                    dtadp.Fill(dt1);

                    Price.Text = dt1.Rows[0]["Price"].ToString();
                    title1.Text = dt1.Rows[0]["Title"].ToString();
                    SellName.Text = dt1.Rows[0]["UserID"].ToString();

                    SellName.Text = dt1.Rows[0]["UserID"].ToString();


                    Label24.Text = dt1.Rows[0]["Description"].ToString();
                    PostedDate.Text = dt1.Rows[0]["Dated"].ToString();

                    //Label4.Text = dt1.Rows[0]["Brand"].ToString();


                    Location.Text = dt1.Rows[0]["City"].ToString();
                    city.Text = dt1.Rows[0]["City"].ToString();
                    state.Text = dt1.Rows[0]["State"].ToString();
                    country.Text = dt1.Rows[0]["Country"].ToString();
                    string str1 = dt1.Rows[0]["PicPath1"].ToString();
                    string str2 = dt1.Rows[0]["PicPath2"].ToString();
                    string str3 = dt1.Rows[0]["PicPath3"].ToString();
                    string str4 = dt1.Rows[0]["PicPath4"].ToString();
                    string str5 = dt1.Rows[0]["PicPath5"].ToString();
                    string str6 = dt1.Rows[0]["PicPath6"].ToString();
                    if (str1 != "")
                    {
                        img1.Src = str1;
                    }
                    else
                    {
                        img1.Visible = false;
                    }
                    if (str2 != "")
                    {
                        img2.Src = str2;
                    }
                    else
                    {
                        img2.Visible = false;
                    }
                    if (str3 != "")
                    {
                        img3.Src = str3;
                    }
                    else
                    {
                        img3.Visible = false;
                    }
                    if (SellName.Text == Session["UName"].ToString())
                    {
                        Button1.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Price.Text = ex.Message;
                }
            }

        }
        }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MakeOffer.aspx?Uid=" + SellName.Text + "");
    }
}
