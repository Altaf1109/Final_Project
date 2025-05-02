<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="MakeOffer.aspx.cs" Inherits="MakeOffer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 813px;
        }
        .auto-style2 {
            width: 813px;
            text-align: right;
        }
        .auto-style3 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style4 {
            width: 813px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
<div class="container">
        <h1 style="text-align:center;" class="text-dark">
            <asp:Label ID="Label4" runat="server" CssClass="text-primary" Font-Bold="True" Font-Names="Comic Sans MS" Text="Message "></asp:Label>
        </h1>
        <div class="row">
            
            <div class="col">

                <table class="w-100">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" CssClass="text-primary" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="25px" Text="Write Message"></asp:Label>
                        </td>
                        <td class="auto-style2">&nbsp;&nbsp;<asp:TextBox ID="txtMsg" runat="server" CssClass="auto-style3" TextMode="MultiLine" ValidationGroup="a" Width="411px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMsg" ErrorMessage="Enter any message.." Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" OnClick="Button1_Click" Text="Post" ValidationGroup="a" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="40px" Height="60px" Width="300px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
        </asp:Panel>
    <asp:Panel ID="Panel2" Visible="false" runat="server">
        <div class="container">
            <div style="margin-top:50px;500px;height:100px;color:blueviolet;background-color:aqua;border-radius:20px; ">
                <h1 style="text-align:center;margin-top:20px;font-family:Calibri">Message sent </h1>
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Home.aspx" runat="server">Back to Home</asp:HyperLink>
            </div>

        </div>
    </asp:Panel>

</asp:Content>

