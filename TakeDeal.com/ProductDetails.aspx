<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="css/btn.css" />
    <script src="https://kit.fontawesome.com/31eed72dbe.js" crossorigin="anonymous"></script>

    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-xl mt-5 ">
        <div class="row">
            <div class="col">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <%--<img src='<%#Eval("PicPath1")%>' class="d-block w-100" alt="...">--%>
                            <%--<asp:Image ID="Image1"  runat="server" Height="400px" Width="600px" />--%>
                            <img runat="server" id="img1" alt="Image" style="width: 600px;" />
                        </div>
                        <div class="carousel-item">
                            <%--<asp:Image ID="Image2"  runat="server" Height="400px" Width="600px" />--%>
                            <img runat="server" id="img2" alt="Image" style="width: 600px;" />
                        </div>
                        <div class="carousel-item">
                            <%--<asp:Image ID="Image3"  runat="server" Height="400px" Width="600px" />--%>
                            <img runat="server" id="img3" alt="Image" style="width: 600px;" />
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </button>
                </div>
                <asp:Panel ID="CarsPanel" runat="server">
                    <div class="border border-dark rounded mt-3">
                        <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px; font-size: 40px; font-family: 'Times New Roman', Times, serif">
                            <asp:Label ID="Brand" runat="server" Text="Brand" /><asp:Label ID="Year" runat="server" Text="(2022)" /></h4>
                        <h6 class="ml-3"><i class="fa-solid fa-gauge-max"></i>
                            <asp:Label ID="Fuel" CssClass="mr-4" runat="server" Text="Petrol"></asp:Label>|
                         <i class="fa-solid fa-gauge-max"></i>
                            <asp:Label ID="KMDriven" runat="server" CssClass="mr-4" Text="25000"></asp:Label>|
                         <i class="fa-solid fa-tire"></i>
                            <asp:Label ID="transmission" runat="server" Text="Manual"></asp:Label>
                        </h6>

                        <hr />
                    </div>
                    <div class="border border-dark rounded mt-3">
                        <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px; font-size: 30px; font-family: 'Times New Roman', Times, serif">
                            <asp:Label ID="Label6" runat="server" Text="Overview" /></h4>

                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    Owener<br />
                                    <asp:Label ID="Owener" runat="server" Text="" />
                                </div>
                                <div class="col">
                                    Location<br />
                                    <asp:Label ID="Location" runat="server" Text="" />
                                </div>
                                <div class="col">
                                    Posting Date<br />
                                    <asp:Label ID="PostingDate" runat="server" Text="" />
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="border border-dark rounded mt-3">
                        <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px; font-size: 30px; font-family: 'Times New Roman', Times, serif">
                            <asp:Label ID="Label10" runat="server" Text="Description" /></h4>
                        <asp:Label ID="dis" CssClass="ml-4" Text="Description" runat="server" />
                        <hr />
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <div class="border border-dark rounded mt-3">
                        <%--<p style="color: gray; font-weight: bold; margin-left: 20px; font-size: 25px;">
                            <asp:Label ID="Label7" runat="server" Text="Brand  |"></asp:Label>
                            <asp:Label ID="Label8" runat="server" Text="Samsung"></asp:Label>
                        </p>
                            <div style="display:flex">
                            
                          <asp:Label ID="Label13" runat="server" CssClass="ml-3" Text="Year" Font-Size="20pt"  Font-Bold="True"></asp:Label>&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="byear" runat="server" Font-Size="20pt"></asp:Label></div>
                        <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px;">
                            <asp:Label ID="Label4" runat="server" Text="">Details</asp:Label></h4>

                        <p style="color: gray; font-weight: bold; margin-left: 20px; font-size: 25px;">
                            <asp:Label ID="Label5" runat="server" Text="Brand  |"></asp:Label>
                            <asp:Label ID="Label9" runat="server" Text="Samsung"></asp:Label>
                        </p>--%>
                        <div class="container">
                            <h4>
                                <asp:Label ID="Label7" runat="server" Text="Details  " Font-Bold="True"></asp:Label></h4>
                            <div class="row">

                                <div class="col-3">
                                    <asp:Label ID="Label14" runat="server" Text="Brand  |"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label16" runat="server" Text="Model  |"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-3">
                                    <asp:Label ID="Label18" runat="server" Text="Year  |"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label20" runat="server" Text="KMDriven  |"></asp:Label>
                                </div>
                                <div class="col-3">
                                    <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                        <hr />
                    </div>
                    <div class="border border-dark rounded mt-3">
                        <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px; font-size: 30px; font-family: 'Times New Roman', Times, serif">
                            <asp:Label ID="Label11" runat="server" Text="Description" /></h4>
                        <asp:Label ID="Label12" CssClass="ml-4" Text="Description" runat="server" />
                        <hr />
                    </div>
                </asp:Panel>

                <asp:Panel ID="PanelMobiles" runat="server" Visible="False">
                    <div class="container border border-dark rounded mt-3">
                        <h4>
                            <asp:Label ID="Label8" runat="server" Text="Details  " Font-Bold="True"></asp:Label></h4>

                        <div class="row">
                            <div class="col-3">
                                <asp:Label ID="Label5" runat="server" Text="Brand  |"></asp:Label>
                            </div>
                            <div class="auto-style1">
                                <asp:Label ID="Label4" CssClass="ml-4" Text="" runat="server" />
                            </div>
                        </div>

                    </div>
                    <div class="border border-dark rounded mt-3">
                        <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px; font-size: 30px; font-family: 'Times New Roman', Times, serif">
                            <asp:Label ID="Label9" runat="server" Text="Description" /></h4>
                        <asp:Label ID="Label13" CssClass="ml-4" Text="Description" runat="server" />
                        <hr />
                    </div>
                </asp:Panel>

                <asp:Panel ID="PanelElectronics" runat="server" Visible="False">
                    <div class="container border border-dark rounded mt-3">
                        <%-- <h4> <asp:Label ID="Label22" runat="server" Text="Details" Font-Bold="True"></asp:Label></h4>--%>
                        <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px; font-size: 30px; font-family: 'Times New Roman', Times, serif">
                            <asp:Label ID="Label23" runat="server" Text="Description" /></h4>
                        <asp:Label ID="Label24" CssClass="ml-4" Text="Description" runat="server" />
                    </div>


                </asp:Panel>
            </div>
            <div class="col">

                <div class="border border-dark rounded ">
                    <div style="display: flex; width: 100%; margin-top: 10px;" class="ml-3">
                        <h1>₹<asp:Label ID="Price" runat="server" Text=""></asp:Label></h1>
                    </div>
                    <p style="margin-left: 40px; color: grey;">
                        <asp:Label ID="title1" runat="server" Text=""></asp:Label>
                    </p>
                    <%--<button type="button" class="btn btn-secondary btn-lg btn-block">Make an Offer</button>--%>
                    <asp:Button ID="Button1" CssClass="btn btn-secondary btn-lg btn-block" runat="server" Text="Make an Offer" OnClick="Button1_Click" />


                </div>

                <div class="border border-dark rounded mt-3">
                    <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px;">
                        <asp:Label ID="Label1" runat="server" Text="">Seller description</asp:Label></h4>

                    <p style="color: forestgreen; font-weight: bold; text-align: center; font-size: 25px;">
                        <asp:Label ID="SellName" runat="server"></asp:Label>
                    </p>

                    <p style="text-align: center; font-size: 15px;">Members seens :<asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
                </div>
                <div class="border border-dark rounded mt-3">
                    <h4 style="font-weight: bold; margin-top: 10px; margin-left: 20px;">
                        <asp:Label ID="Label3" runat="server" Text="">Add Posted In</asp:Label></h4>

                    <p style="color: blue; font-weight: bold; text-align: center; font-size: 20px;">
                        <asp:Label ID="city" runat="server" Text="Solapur"></asp:Label>, 
                        <asp:Label ID="state" runat="server" Text="Maharashtra"></asp:Label>,
                        <asp:Label ID="country" runat="server" Text="India"></asp:Label>
                    </p>

                    <p style="text-align: center; font-size: 15px; font-weight: bold;">Posted date:<asp:Label ID="PostedDate" runat="server" Text=""></asp:Label></p>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

