<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/template/demo/AdminMaster.master" AutoEventWireup="true" CodeFile="showusers.aspx.cs" Inherits="Admin_template_demo_showusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container border border-dark" style="border-radius:20px;">
        <h2 style="text-align:center;color:darkblue;">List of all Users</h2>
    
   

     
    <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="ID" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="FullName" HeaderText="Full Name" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="UName" HeaderText="User Name" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Mobile" HeaderText="Mobile No." >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Dated" HeaderText="Dated" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Active" HeaderText="Active" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="Active" Text="Active">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CheckBoxField>
        </Columns>
    </asp:GridView>

     </div>
    <script src="../../../Scripts/jquery-3.6.0.min.js"></script>
    <script src="../../../Scripts/bootstrap.min.js"></script>
    <script src="../../../Scripts/bootstrap.bundle.min.js"></script>
</asp:Content>

