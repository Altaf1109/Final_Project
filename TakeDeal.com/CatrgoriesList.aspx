<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster2.master" AutoEventWireup="true" CodeFile="CatrgoriesList.aspx.cs" Inherits="CatrgoriesList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://kit.fontawesome.com/31eed72dbe.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/Menu.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <h3 class="text-center font-weight-bold mt-1">POST YOUR AD</h3>
    <div class="container border border-dark mt-3">
        <h4 class="font-weight-bold">Selected Category</h4>

        <div class="container border ">
            <div class="row">
                <div class="col border-right">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><div"><a href="cars.aspx" style="text-decoration:none;cursor:pointer;"> <span> <i class="fa-solid fa-car"></i> &nbsp;
                                <asp:Label ID="Label1" runat="server" Text="Autos (Cars)"></asp:Label>    </span></a></div></th>
                            </tr>
                            <tr>
                                <th><div><a href="Mobile.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-mobile-screen"></i>&nbsp;&nbsp; Mobiles</span></a></div></th>
                            </tr>
                            <tr>
                                <th><div><a href="Bikes.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-motorcycle"></i>&nbsp;&nbsp; Bikes</span></a></div></th>
                            </tr>
                            <tr>
                                <th><div><a href="ElectronicAppliances.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-tv"></i>&nbsp;&nbsp;Electronics & Appliances</span></a></div></th>
                                <%--<i style="position:absolute;right:10px;" class="fa-solid mt-1 fa-chevron-right"></i>--%>
                            </tr>
                            <%--<tr>
                                <th><div><a href="CommercialVehiclesSpares.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-truck-front"></i>&nbsp;&nbsp;Commercial Vehicles & Spares</span></a></div></th>
                            </tr>--%>
                            <tr>
                                <th><div><a href="Furnitures.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-couch"></i>&nbsp;&nbsp;Furniture</span></a></div></th>
                            </tr>
                            <%--<tr>
                                <th><div><a href="Fashion.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-shirt"></i>&nbsp;&nbsp;Fashion</span></a></div></th>
                            </tr>
                            <tr>
                                <th><div><a href="BooksSportsHobbies.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-guitar"></i>&nbsp;&nbsp;Books, Sports & Hobbies</span></a></div></th>
                            </tr>
                            <tr>
                                <th><div><a href="GymFitness.aspx" style="text-decoration:none;cursor:pointer;"><span><i class="fa-solid fa-dumbbell"> </i>&nbsp;&nbsp;Gym & Fitness</span></a></div></th>
                            </tr>--%>
                            <tr>
                                <th><div><a href="Others.aspx" style="text-decoration:none;cursor:pointer;"><span>>&nbsp; Others</span></a></div></th>
                            </tr>
                        </thead>
                    </table>
                </div>
               
            </div>

        </div>

        <div class="row">
        </div>
    </div>
    <script>  
    </script>
</asp:Content>

