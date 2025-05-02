<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="ShowAds.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container mt-5 border border-dark" style="border-radius:20px;">
        <h2 style ="text-align:center;">
            Posted Ads
        </h2>


        <div class="text-center">

            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Cars</button>--%>
            <asp:Button ID="Carsbtn" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Cars" />
        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="CarID" HeaderText="Product ID" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" />
                <asp:BoundField DataField="Year" HeaderText="Year" />
                <asp:BoundField DataField="KMDriven" HeaderText="KM Driven" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Dated" HeaderText="Dated" />
                <asp:ImageField DataImageUrlField="PicPath1" HeaderText="Images">
                    <ControlStyle Width="200px" />
                </asp:ImageField>
                <asp:ButtonField CommandName="Del" HeaderText="Remove" Text="Delete " />
            </Columns>
            </asp:GridView>

            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Bikes</button>--%>
            <asp:Button ID="Bikesbtn" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Bikes" />
            <asp:GridView ID="GridView2" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="BikeID" HeaderText="Product ID" />
                    <asp:BoundField DataField="Brand" HeaderText="Brand" />
                    <asp:BoundField DataField="Year" HeaderText="Year" />
                    <asp:BoundField DataField="KMDriven" HeaderText="KM Driven" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Dated" HeaderText="Date" />
                    <asp:ImageField DataImageUrlField="PicPath1" HeaderText="Images">
                    <ControlStyle Width="200px" />
                </asp:ImageField>
                </Columns>
            </asp:GridView>
            <br />
            <%--<button type="button" class="btn btn-primary btn-lg btn-block">Electronics</button>--%>
            <asp:Button ID="Elecbtn" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Electronics" />

            <asp:GridView ID="GridView3" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="EID" HeaderText="Product ID" />
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
                        <asp:Button ID="Furbtn" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Furniture" />

            <asp:GridView ID="GridView4" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="FuID" HeaderText="Product ID" />
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
             <asp:Button ID="mblbtn" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Others" />

            <asp:GridView ID="GridView5" CssClass="table" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="OID" HeaderText="Product ID" />
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

