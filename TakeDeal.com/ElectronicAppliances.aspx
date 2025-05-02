<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster2.master" AutoEventWireup="true" CodeFile="ElectronicAppliances.aspx.cs" Inherits="ElectronicAppliances" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .ddl {
            width: 300px;
            border: 1px solid blue;
        }

        .txtbox {
            border: 0.5px solid green;
        }
    </style>

    <link rel="stylesheet" href="css/styles.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <center><span class="align-content-center font-weight-bolder mt-2 " style ="font-size:16pt;">POST YOUR AD</span></center>
                    <div>
                        <table class=" border table">

                            <tbody>
                                <tr>
                                    <th>
                                        <h5 class="ml-3 font-weight-bolder">SELECTED CATEGORY : Electronic Appliances</h5>
                                        <asp:HyperLink ID="HyperLink1" CssClass="ml-3" NavigateUrl="~/CatrgoriesList.aspx" runat="server">Change</asp:HyperLink>
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" CssClass="font-weight-bolder ml-3" Text="INCLUDE SOME DETAILS"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label8" runat="server" CssClass="ml-3" Text="Ad Title *"></asp:Label>
                                        &nbsp;
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="Add title" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtTitle" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" ValidationGroup="a" MaxLength="30" />

                                        <br />
                                        <asp:Label ID="Label9" runat="server" CssClass="ml-3" Text="Description *"></asp:Label>
                                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDescription" ErrorMessage="Enter Description" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        &nbsp;<asp:TextBox ID="txtDescription" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="70px" Font-Size="13pt" TextMode="MultiLine" ValidationGroup="a" />
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <h6 class="ml-3 font-weight-bolder ">SET A PRICE</h6>

                                        <asp:Label ID="Label10" runat="server" CssClass="ml-3" Text="Price*"></asp:Label>
                                        &nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Price" ErrorMessage="Enter Price" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        &nbsp;<div style="display: flex;">
                                            <br />
                                            <span class="ml-3" style="font-size: 25pt;">₹</span><asp:TextBox ID="Price" CssClass="form-control ml-1 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" ValidationGroup="a" TextMode="Number" /></div>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td>
                                        <h6 class="ml-3 font-weight-bolder">UPLOAD UP TO 6 PHOTOS&nbsp;&nbsp;<asp:Label ID="Label15" runat="server" ForeColor="Red" Text="Select atleast one image" Visible="False"></asp:Label>
                                        </h6>
                                        <div class="row">
                                            <div class="col">
                                                <asp:FileUpload CssClass="form-control txtbox" ID="FileUpload1" runat="server" />
                                                <asp:FileUpload CssClass="form-control txtbox" ID="FileUpload2" runat="server" />
                                                <asp:FileUpload CssClass="form-control txtbox" ID="FileUpload3" runat="server" />
                                            </div>
                                            <div class="col">
                                                <asp:FileUpload CssClass="form-control txtbox" ID="FileUpload4" runat="server" />
                                                <asp:FileUpload CssClass="form-control txtbox" ID="FileUpload5" runat="server" />
                                                <asp:FileUpload CssClass="form-control txtbox" ID="FileUpload6" runat="server" />
                                            </div>
                                        </div>


                                    </td>
                                </tr>--%>
                                <tr>
                                    <td>
                                        <h6 class="ml-3 font-weight-bolder">CONFIRM YOUR LOCATION
                                            <asp:Label ID="Label17" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                        </h6>
                                        <br />

                                        <div class="dropdown">
                                            <div class="row">
                                                <div class="col">
                                                    <asp:Label ID="Label11" runat="server" CssClass="ml-3" Text="Country *"></asp:Label>
                                                    &nbsp;
                                        <asp:DropDownList CssClass="form-control txtbox" ID="Country" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Country_SelectedIndexChanged"></asp:DropDownList>
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="Label13" runat="server" CssClass="ml-3" Text="State *"></asp:Label>
                                                    &nbsp;<asp:DropDownList CssClass="form-control txtbox" ID="State" runat="server" AutoPostBack="True" OnSelectedIndexChanged="State_SelectedIndexChanged"></asp:DropDownList>
                                                </div>
                                                <div class="col">
                                                    <asp:Label ID="Label14" runat="server" CssClass="ml-3" Text="City *"></asp:Label>
                                                    &nbsp;<asp:DropDownList CssClass="form-control txtbox" ID="City" runat="server"></asp:DropDownList>
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
                                        <h6 class="ml-3 font-weight-bolder">REVIEW YOUR DETAILS</h6>
                                        <br />
                                        <asp:Label ID="Label12" runat="server" CssClass="ml-3" Text="Name *"></asp:Label>
                                        <asp:TextBox ID="txtName" CssClass="form-control ml-3 txtbox" runat="server" Width="500px" Height="45px" Font-Size="13pt" Enabled="False" />
                                        <br />
                                        <br />
                                        <asp:Label ID="mobilehead" runat="server" CssClass="ml-3" Text="Mobile No." />

                                        <%--<button type="button" id ="post" class="btn btn-primary btn-lg w-25 bg-success ml-3">Post Now</button>--%>

                                        <asp:Label ID="mobileNo" runat="server" CssClass="ml-3" Text="+91 7972649807"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg w-25 bg-success ml-3" runat="server" Text="Post Now" OnClick="Button1_Click" ValidationGroup="a" />

                                        <br />
                                        <asp:HiddenField ID="file1" runat="server" />
                                        <asp:HiddenField ID="file2" runat="server" />
                                        <asp:HiddenField ID="file3" runat="server" />
                                        <asp:HiddenField ID="file4" runat="server" />
                                        <asp:HiddenField ID="file5" runat="server" />
                                        <asp:HiddenField ID="file6" runat="server" />
                                    </td>
                                </tr>

                            </tbody>

                        </table>

                    </div>



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


