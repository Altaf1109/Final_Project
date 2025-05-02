<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="css/StyleSheet1.css"  />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-5 border border-info " style="border-radius:20px; width:1000px;">
        <h3 class="mt-2 " id="lblReg">Login </h3>
        <br />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Email address :"></asp:Label>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="* Enter email" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="* Enter correct email" ForeColor="Red" ValidationGroup="a" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Enter email " Visible="False"></asp:Label>
            <asp:TextBox ID="email" CssClass="form-control mt-1" runat="server" MaxLength="50" style="margin-bottom: 0" />
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
            &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="* Enter Password" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Enter password" Visible="False"></asp:Label>
            <asp:TextBox ID="pass" CssClass="form-control mt-1" runat="server" MaxLength="20" TextMode="Password" />
        </div>
        <asp:Button  ID="btnlogin" Width="120px" CssClass="btn-lg btn-primary mb-3" runat="server" Text="Login" ValidationGroup="a" OnClick="btnlogin_Click" />
        <asp:Label ID="Label2" CssClass="font-monospace ml-5" runat="server" Text="Don't have account..? "></asp:Label>
            <asp:HyperLink ID="createAc" class="ml-2 font-monospace createAc" NavigateUrl="~/Registration.aspx" runat="server">Create now ...</asp:HyperLink>
      
    &nbsp;</div>


</asp:Content>

