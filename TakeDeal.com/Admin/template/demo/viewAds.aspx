<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/template/demo/AdminMaster.master" AutoEventWireup="true" CodeFile="viewAds.aspx.cs" Inherits="Admin_template_demo_viewAds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../../../Scripts/bootstrap.min.js"></script>
    <script src="../../../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../../../Scripts/bootstrap.bundle.min.js"></script>
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 150px;
            width: 244px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="container mt-5 border border-dark" style="border-radius:20px;">
        <h2 style ="text-align:center;">
            Posted Ads
        </h2>


        <div class="text-center">

            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Cars</button>--%>
            <asp:Button ID="Cars" class="btn btn-primary btn-lg btn-block" runat="server" Text="Cars" />
        <asp:GridView ID="GridView1" CssClass="table"  runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="Brand" HeaderText="Brand" />
                <asp:BoundField DataField="Year" HeaderText="Year" />
                <asp:BoundField DataField="KMDriven" HeaderText="KM Driven" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Dated" HeaderText="Dated" DataFormatString="{0:dd-MMM-yyyy}" />
                <asp:ImageField DataImageUrlField="PicPath1" HeaderText="Image">
                </asp:ImageField>
            </Columns>
            </asp:GridView>

            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Bikes</button>--%>
             <asp:Button ID="Bikes" class="btn btn-primary btn-lg btn-block" runat="server" Text="Bikes" />
            <asp:GridView ID="GridView2" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Brand" HeaderText="Brand" />
                    <asp:BoundField DataField="Year" HeaderText="Year" />
                    <asp:BoundField DataField="KMDriven" HeaderText="KM Driven" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Dated" HeaderText="Date" />
                    <asp:ImageField DataImageUrlField="PicPath1" HeaderText="Images">
                </asp:ImageField>
                </Columns>
            </asp:GridView>
            <br />
            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Electronics</button>--%>
             <asp:Button ID="Electronics" class="btn btn-primary btn-lg btn-block" runat="server" Text="Electronics" />
            <asp:GridView ID="GridView3" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                   
                    <asp:BoundField DataField="Dated" HeaderText="Date" />
                    <asp:ImageField DataImageUrlField="PicPath1" HeaderText="Images">
                    <ControlStyle Width="200px" />
                </asp:ImageField>
                </Columns>
            </asp:GridView>
            <br />
            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Furnitures</button>--%>
             <asp:Button ID="Furniture" class="btn btn-primary btn-lg btn-block" runat="server" Text="Furniture" />
            <asp:GridView ID="GridView4" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                   
                    <asp:BoundField DataField="Dated" HeaderText="Date" />
                    <asp:ImageField DataImageUrlField="PicPath1" HeaderText="Images">
                    <ControlStyle Width="200px" />
                </asp:ImageField>
                </Columns>
            </asp:GridView>
            <br />
        

            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Furnitures</button>--%>
             <asp:Button ID="Others" class="btn btn-primary btn-lg btn-block" runat="server" Text="Others" />
            <asp:GridView ID="GridView5" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                     <asp:BoundField DataField="Brand" HeaderText="Brand" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                   
                    <asp:BoundField DataField="Dated" HeaderText="Date" />
                    <asp:ImageField DataImageUrlField="PicPath" HeaderText="Images">
                    <ControlStyle Width="200px" />
                </asp:ImageField>
                </Columns>
            </asp:GridView>
            <br />
        
        </div>
    </div>
</asp:Content>

