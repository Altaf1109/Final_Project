<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/template/demo/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_template_demo_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" /><script src="https://kit.fontawesome.com/31eed72dbe.js" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container mt-5">
       <div class="row">
           <div class="col-5 ml-3 mt-4" style="display:flex ;border:1px solid #544473;border-radius:20px;height:200px;align-items:center">
                 <h1 style="color:blueviolet; margin-left:15px;"><i class="fa-solid fa-users mr-2"></i> Total Users | </h1>
                <h1 style="color:blueviolet;">
                    &nbsp;
                    <asp:Label ID="users" runat="server" Text="Label" /> </h1>
           </div>
           
           <div class="col-5 ml-5 mt-4" style="display:flex ;border:1px solid #544473;border-radius:20px;height:200px;align-items:center">
                 <h1 style="color:blueviolet; margin-left:15px;"><i class="fa-solid fa-rectangle-ad mr-2"></i>Total Ad's | </h1>
                <h1 style="color:blueviolet;">
                    &nbsp;&nbsp;
                    <asp:Label ID="ads" runat="server" Text="Label" /> </h1>
           </div>
       </div>
   </div>
    <script src="../../../Scripts/jquery-3.6.0.min.js"></script>
    <script src="../../../Scripts/bootstrap.bundle.min.js"></script>

</asp:Content>

