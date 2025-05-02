<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster2.master" AutoEventWireup="true" CodeFile="cars.aspx.cs" Inherits="cars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #petrol1 {
            background-color: black;
        }
    </style>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <style>
        .ddl {
            width: 300px;
            border: 1px solid blue;
        }

        .txtbox {
            border: 0.5px solid green;
        }

        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style2 {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-bottom: 0;
            background-color: #fff;
        }
    </style>

    <link rel="stylesheet" href="css/styles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>
        &nbsp;
   <asp:Label ID="Label15" runat="server" Visible="false" Text="Label"></asp:Label>
        &nbsp;<asp:HiddenField ID="file1" runat="server" />
        <asp:HiddenField ID="file2" runat="server" />
        <asp:HiddenField ID="file3" runat="server" />
        <asp:HiddenField ID="file4" runat="server" />
        <asp:HiddenField ID="file5" runat="server" />
        <asp:HiddenField ID="file6" runat="server" />
        <br />
        <asp:HiddenField ID="file7" runat="server" />
        <br />
        &nbsp;<div class="container">
            <div class="row">
                <div class="col">
                    <center><span class="align-content-center font-weight-bolder mt-2 nn" style ="font-size:16pt;">POST YOUR AD</span></center>
                    <div>
                        <table class=" border table">

                            <tbody>
                                <tr>
                                    <th>
                                        <h5 class="ml-3 font-weight-bolder">SELECTED CATEGORY : Cars </h5>
                                        <asp:HyperLink ID="HyperLink1" CssClass=" ml-3" NavigateUrl="~/CatrgoriesList.aspx" runat="server">Change</asp:HyperLink>


                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     
                                
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="includeDetails" runat="server" CssClass="font-weight-bolder ml-3" Text="INCLUDE SOME DETAILS"></asp:Label>
                                        <br />
                                        <br />

                                        <asp:Label ID="Brand" runat="server" CssClass="ml-3" Text="Brand *"></asp:Label>
                                        &nbsp;
                                    &nbsp;<asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Select any Brand" Visible="False"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="ddlBrand" runat="server" CssClass="form-control ddl ml-3" ValidationGroup="a">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>Maruti Suzuki</asp:ListItem>
                                            <asp:ListItem>Hyundai</asp:ListItem>
                                            <asp:ListItem>Tata</asp:ListItem>
                                            <asp:ListItem>Mahindra</asp:ListItem>
                                            <asp:ListItem>Kia</asp:ListItem>
                                            <asp:ListItem>Toyota</asp:ListItem>
                                            <asp:ListItem>Mercedes-Benz</asp:ListItem>
                                            <asp:ListItem>Volkswagen</asp:ListItem>
                                            <asp:ListItem>Nissan</asp:ListItem>
                                            <asp:ListItem>Skoda</asp:ListItem>
                                            <asp:ListItem>Ford</asp:ListItem>
                                            <asp:ListItem>Honda</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <asp:Label ID="year" runat="server" CssClass="ml-3" Text="Year *"></asp:Label>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtYear" ErrorMessage="Enter year" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtYear" ErrorMessage="Enter correct year" ForeColor="Red" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="txtYear" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" ValidationGroup="a" MaxLength="4" TextMode="Number" />
                                        <br />
                                        <asp:Label ID="Fuel" runat="server" CssClass="ml-3" Text="Fuel *"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="Select fuel type" Visible="False"></asp:Label>
                                        <br />
                                        <br />
                                        <div class="ml-3">
                                            <asp:DropDownList ID="ddlFuel" runat="server" CssClass="form-control ddl" ValidationGroup="a">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Petrol</asp:ListItem>
                                                <asp:ListItem>Diesel</asp:ListItem>
                                                <asp:ListItem>LPG</asp:ListItem>
                                                <asp:ListItem>CNG Hybrid</asp:ListItem>
                                                <asp:ListItem>Electric</asp:ListItem>
                                            </asp:DropDownList>
                                            <%-- <asp:RadioButton ID="Petrol" runat="server" GroupName="engine" />
                                        <asp:Button ID="petrol1" CssClass="btn btn-outline-info" runat="server" Text="Petrol" OnClick="petrol1_Click"  />
                                        <asp:RadioButton ID="Diesel" runat="server" GroupName="engine" />
                                        <asp:Button ID="Diesel1" CssClass="btn btn-outline-info" runat="server" Text="Diesel" Style="height: 40px" OnClick="Diesel1_Click" />
                                        <asp:RadioButton ID="Electric" runat="server" GroupName="engine" />
                                        <asp:Button ID="Electric1" CssClass="btn btn-outline-info" runat="server" Text="Electric" OnClick="Electric1_Click" />
                                        <asp:RadioButton ID="LPG" runat="server" GroupName="engine" />
                                        <asp:Button ID="LPG1" CssClass="btn btn-outline-info" runat="server" Text="LPG" OnClick="LPG1_Click" />
                                        <asp:RadioButton ID="CNGHybrids" runat="server" GroupName="engine" />
                                        <asp:Button ID="CNGHybrids1" CssClass="btn btn-outline-info" runat="server" Text="CNG & Hybrids" OnClick="CNGHybrids1_Click"  />--%>
                                        </div>
                                        <br />
                                        <br />
                                        <asp:Label ID="Transmission" runat="server" CssClass="ml-3" Text="Transmission *"></asp:Label>
                                        &nbsp;<asp:Label ID="Label19" runat="server" ForeColor="Red" Text="Select transmission" Visible="False"></asp:Label>
                                        &nbsp;<div class="ml-3">
                                            <asp:DropDownList ID="ddlTransmission" runat="server" CssClass="form-control ddl" ValidationGroup="a">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Automatic</asp:ListItem>
                                                <asp:ListItem>Manual</asp:ListItem>
                                            </asp:DropDownList>
                                            <%--<asp:RadioButton ID="Automatic" runat="server" GroupName="Transmission" />
                                        <asp:Button ID="Automatic1" CssClass="btn btn-outline-info" runat="server" Text="Automatic" OnClick="Automatic1_Click"/>
                                        <asp:RadioButton ID="Manual" runat="server" GroupName="Transmission" />
                                        <asp:Button ID="Manual1" CssClass="btn btn-outline-info" runat="server" Text="Manual" OnClick="Manual1_Click" />--%>
                                        </div>
                                        <br />
                                        <asp:Label ID="KMDriven" runat="server" CssClass="ml-3" Text="KM Driven *"></asp:Label>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtKM" ErrorMessage="Enter KM Driven" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" ValidationGroup="a"></asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;<asp:TextBox ID="txtKM" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" ValidationGroup="a" MaxLength="7" TextMode="Number" />
                                        <br />
                                        <asp:Label ID="Oweners" runat="server" CssClass="ml-3" Text="No. of Oweners *"></asp:Label>
                                        &nbsp;<asp:Label ID="Label20" runat="server" ForeColor="Red" Text="Select Oweners" Visible="False"></asp:Label>
                                        <br />
                                        <%-- <asp:TextBox ID="TextBox3" CssClass="form-control ml-3 " runat="server" Width="500px" Height="45px" Font-Size="13pt" />

                                  
                                    <asp:Label ID="Label7" runat="server" CssClass="ml-3" Text="No. of Owners *"></asp:Label>
                                    <br />
                                    <asp:RadioButton ID="nf1" runat="server" GroupName="owner" />
                                        <asp:Button ID="Button1" CssClass="btn btn-outline-info" runat="server" Text="1"/>
                                    &nbsp;
                                    <asp:RadioButton ID="nf2" runat="server" GroupName="owner" />
                                        <asp:Button ID="Button2" CssClass="btn btn-outline-info" runat="server" Text="2" />
                                    &nbsp;
                                    <asp:RadioButton ID="nf3" runat="server" GroupName="owner" />
                                        <asp:Button ID="Button3" CssClass="btn btn-outline-info" runat="server" Text="3" />
                                    &nbsp;
                                    <asp:RadioButton ID="nf4" runat="server" GroupName="owner" />
                                        <asp:Button ID="Button4" CssClass="btn btn-outline-info" runat="server" Text="4" />
                                    &nbsp;
                                    <asp:RadioButton ID="nf5" runat="server" GroupName="owner" />
                                        <asp:Button ID="Button5" CssClass="btn btn-outline-info" runat="server" Text="4+" />
                                    &nbsp--%>
                                        <asp:DropDownList CssClass="form-control ddl ml-3" ID="ddlOwener" runat="server" ValidationGroup="a">
                                            <asp:ListItem>Select</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>4+</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <%--<asp:Label ID="Title" runat="server" CssClass="ml-3" Text="AD Title *"></asp:Label>--%>
                                        <asp:Label ID="Label2" runat="server" CssClass="ml-3" Text="Ad Title *"></asp:Label>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTitle" ErrorMessage="Add Title" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:TextBox ID="txtTitle" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" ValidationGroup="a" MaxLength="30" />

                                        <br />
                                        <asp:Label ID="Description" runat="server" CssClass="ml-3" Text="Description *"></asp:Label>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDescription" ErrorMessage="Enter description" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:TextBox ID="txtDescription" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="70px" Font-Size="13pt" TextMode="MultiLine" ValidationGroup="a" />
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <h6 class="ml-3 font-weight-bolder">SET A PRICE</h6>
                                        <br />
                                        <asp:Label ID="pricee" runat="server" CssClass="ml-3" Text="Price*"></asp:Label>
                                        &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Price" ErrorMessage="Enter Price" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:Label ID="lblPrice" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                        <%--<asp:TextBox ID="TextBox6" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" />--%>

                                        <div style="display: flex;">
                                            <br />
                                            <span class="ml-3" style="font-size: 25pt;">₹</span><asp:TextBox ID="Price" CssClass="form-control ml-1 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" MaxLength="7" ValidationGroup="a" TextMode="Number" />
                                            &nbsp;&nbsp;
                                        </div>

                                    </td>
                                </tr>
                                

                                <tr>
                                    <td>
                                        <h6 class="ml-3 font-weight-bolder">REVIEW YOUR DETAILS</h6>
                                        <br />
                                        <asp:Label ID="Label12" runat="server" CssClass="ml-3" Text="Name *"></asp:Label>
                                        &nbsp;
                                    <asp:TextBox ID="txtName" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" Enabled="False" />
                                        <br />
                                        <br />
                                        <asp:Label ID="mobilehead" runat="server" CssClass="ml-3" Text="Mobile No." />

                                        <asp:Label ID="mobileNo" runat="server" CssClass="ml-3" Text="+91 7972649807"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <%--<button type="button" id ="post" class="btn btn-primary btn-lg w-25 bg-success ml-3">Post Now</button>--%>
                                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg w-25 bg-success ml-3" runat="server" Text="Next" OnClick="Button1_Click" ValidationGroup="a" />
                                    </td>
                                </tr>

                            </tbody>

                        </table>

                    </div>

                    &nbsp;
                </div>

            </div>

        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div class="container mt-5 " id="hill">
            <div class="alert alert-danger text-center " role="alert">
                <h1 class="font-weight-bolder">Add partially posted..</h1>
                <h3>To complete post add more Details</h3>
            </div>
            <h4>Add Images</h4>
            <div class="row">
                <div class="col">
                    <table>
                        <tr>
                                    <td>
                                        <h6 class="ml-3 font-weight-bolder">CONFIRM YOUR LOCATION</h6>
                                        <br />

                                        <div class="dropdown">
                                            <div class="row">
                                                <div class="auto-style1">
                                                    <asp:Label ID="Label11" runat="server" CssClass="ml-3" Text="Countries *"></asp:Label>
                                                    &nbsp;
                                                    <asp:Label ID="lblCountry" runat="server" CssClass="ml-3" ForeColor="Red"></asp:Label>
                                                    &nbsp;<asp:DropDownList CssClass="form-control ddl" ID="Country" runat="server" ValidationGroup="a" AutoPostBack="True" OnSelectedIndexChanged="Country_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="Label13" runat="server" CssClass="ml-3" Text="State *"></asp:Label>
                                                    &nbsp;<asp:Label ID="lblState" runat="server" CssClass="ml-3" ForeColor="Red"></asp:Label>
                                                    &nbsp;<asp:DropDownList CssClass="form-control ddl" ID="State" runat="server" ValidationGroup="a" AutoPostBack="True" OnSelectedIndexChanged="State_SelectedIndexChanged1"></asp:DropDownList>
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="Label14" runat="server" CssClass="ml-3" Text="Neighbourhood *"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:Label ID="lblCity" runat="server" CssClass="ml-3" ForeColor="Red"></asp:Label>
                                                    &nbsp;<asp:DropDownList CssClass="form-control ddl" ID="City" runat="server" ValidationGroup="a"></asp:DropDownList>
                                                </div>

                                            </div>


                                            <%--<button class="btn btn-outline-info dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-expanded="false">
                                            Dropdown
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                            <button class="dropdown-item" type="button">Action</button>
                                            <button class="dropdown-item" type="button">Another action</button>
                                            <button class="dropdown-item" type="button">Something else here</button>
                                        </div>--%>
                                        </div>

                                    </td>
                                </tr>
                        <tr>
                            <td>
                                <h6 class="ml-3 font-weight-bolder">UPLOAD UP TO 6 PHOTOS&nbsp;
                                        <asp:Label ID="Label16" runat="server" Font-Italic="False" Font-Size="15pt" ForeColor="Red" Text="Select atleast one image" Visible="False"></asp:Label>
                                </h6>
                                <div class="row">
                                    <div class="col">
                                        <asp:FileUpload CssClass="auto-style2" ID="FileUpload1" runat="server" />
                                        <asp:FileUpload CssClass="form-control" ID="FileUpload2" runat="server" />
                                        <asp:FileUpload CssClass="form-control" ID="FileUpload3" runat="server" />
                                    </div>
                                    <div class="col">
                                        <asp:FileUpload CssClass="form-control" ID="FileUpload4" runat="server" />
                                        <asp:FileUpload CssClass="form-control" ID="FileUpload5" runat="server" />
                                        <asp:FileUpload CssClass="form-control" ID="FileUpload6" runat="server" />
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button2" CssClass="btn btn-primary btn-lg w-25 bg-success ml-3 mt-5" runat="server" Text="Post Now" OnClick="Button2_Click" ValidationGroup="a" />
                </div>
            </div>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Visible="false">
        <div class="container mt-5">
            <div class="alert alert-primary" role="alert">
                <h1 style="text-align: center;font-family:Bahnschrift" >Add Posted Successfully</h1>
            
            </div>
        </div>
    </asp:Panel>
</asp:Content>

