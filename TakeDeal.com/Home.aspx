<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
        .auto-style2 {
            margin-bottom: .75rem;
            text-align: center;
        }
        .auto-style3 {
            position: relative;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <table cellpadding="2" class="w-100" style="vertical-align: top">
        <tr>
            <td style="vertical-align:top" class="auto-style1">
                <div class="container mt-5">

                    <h1 class="btn btn-warning btn-block" style="font-size:30px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-weight:bolder;color:blueviolet;">
                        Filter
                    </h1>
                    <h2 style=" margin-top:100px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-weight:bolder;font-size:25px;color:blueviolet;">
                        Select Category
                    </h2>
                    <div class="row">
                        <asp:DropDownList CssClass="form-control w-75 ml-4" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CatID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>" SelectCommand="SELECT [CatID], [Name] FROM [Categories]"></asp:SqlDataSource>
                    </div>
                </div>
            </td>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                    <ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                &nbsp;<div class="card-body">
                                    
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicPath1") %>' Width="200px" />
                                    <h4   class="auto-style2 font-weight-bold  mt-5"><%#Eval("Title") %></h4>
                                    <p style="text-align:center;font-size:20px;font-weight:bold;" class="card-text">
                                        Rs. <%# Eval("Price") %>
                                    </p>
                                    <a class="btn btn-primary btn-lg btn-block" href='ProductDetails.aspx?catID=<%#Eval("CatID")%>&amp;carID=<%#Eval("CarID")%>'>Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                    <ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                &nbsp;<div class="card-body">
                                    
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicPath1") %>' Width="200px" />
                                    <h4   class="auto-style2 font-weight-bold  mt-5"><%#Eval("Title") %></h4>
                                    <p style="text-align:center;font-size:20px;font-weight:bold;" class="card-text">
                                        Rs. <%# Eval("Price") %>
                                    </p>
                                    <a class="btn btn-primary btn-lg btn-block" href='ProductDetails.aspx?catID=<%#Eval("CatID")%>&amp;carID=<%#Eval("bikeid")%>'>Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                   <%-- <itemtemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicPath1") %>' Width="200px" />
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("title") %></h5>
                                    <p class="card-text"><%# Eval("price") %></p>
                                    <a href="productdetails.aspx?catid=<%#Eval("catid")%>&carid=<%#Eval("bikeid")%>" class="btn btn-primary">details</a>
                                </div>
                            </div>
                        </div>
                    </itemtemplate>--%>
                </asp:DataList>
                <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                    <ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                &nbsp;<div class="card-body">
                                    
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicPath1") %>' Width="200px" />
                                    <h4   class="auto-style2 font-weight-bold  mt-5"><%#Eval("Title") %></h4>
                                    <p style="text-align:center;font-size:20px;font-weight:bold;" class="card-text">
                                        Rs. <%# Eval("Price") %>
                                    </p>
                                    <a class="btn btn-primary btn-lg btn-block" href='ProductDetails.aspx?catID=<%#Eval("CatID")%>&amp;carID=<%#Eval("EID")%>'>Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <%--<ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                <img src='<%#Eval("PicPath1") %>' class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("Title") %></h5>
                                    <p class="card-text"><%# Eval("Price") %></p>
                                    <a href="ProductDetails.aspx?catID=<%#Eval("CatID")%>&carID=<%#Eval("EID")%>" class="btn btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>--%>
                </asp:DataList>
                <asp:DataList ID="DataList4" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                    <ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                &nbsp;<div class="card-body">
                                    
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicPath") %>' Width="200px" />
                                    <h4   class="auto-style2 font-weight-bold  mt-5"><%#Eval("Title") %></h4>
                                    <p style="text-align:center;font-size:20px;font-weight:bold;" class="card-text">
                                        Rs. <%# Eval("Price") %>
                                    </p>
                                    <a class="btn btn-primary btn-lg btn-block" href='ProductDetails.aspx?catID=<%#Eval("CatID")%>&amp;carID=<%#Eval("MobID")%>'>Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <%--<ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                <img src='<%#Eval("PicPath") %>' class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("Title") %></h5>
                                    <p class="card-text"><%# Eval("Price") %></p>
                                    <a href="ProductDetails.aspx?catID=<%#Eval("CatID")%>&carID=<%#Eval("MobID")%>" class="btn btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>--%>
                </asp:DataList>
                <asp:DataList ID="DataList5" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                    <ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                &nbsp;<div class="card-body">
                                    
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicPath1") %>' Width="200px" />
                                    <h4   class="auto-style2 font-weight-bold  mt-5"><%#Eval("Title") %></h4>
                                    <p style="text-align:center;font-size:20px;font-weight:bold;" class="card-text">
                                        Rs. <%# Eval("Price") %>
                                    </p>
                                    <a class="btn btn-primary btn-lg btn-block" href='ProductDetails.aspx?catID=<%#Eval("CatID")%>&amp;carID=<%#Eval("FuID")%>'>Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <%--<ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                <img src='<%#Eval("PicPath1") %>' class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("Title") %></h5>
                                    <p class="card-text"><%# Eval("Price") %></p>
                                    <a href="ProductDetails.aspx?catID=<%#Eval("CatID")%>&carID=<%#Eval("FuID")%>" class="btn btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>--%>
                </asp:DataList>
                <asp:DataList ID="DataList6" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
                    <ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                &nbsp;<div class="card-body">
                                    
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicPath1") %>' Width="200px" />
                                    <h4   class="auto-style2 font-weight-bold  mt-5"><%#Eval("Title") %></h4>
                                    <p style="text-align:center;font-size:20px;font-weight:bold;" class="card-text">
                                        Rs. <%# Eval("Price") %>
                                    </p>
                                    <a class="btn btn-primary btn-lg btn-block" href='ProductDetails.aspx?catID=<%#Eval("CatID")%>&amp;carID=<%#Eval("OID")%>'>Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <%--<ItemTemplate>
                        <div>
                            <div class="card" style="width: 18rem;">
                                <img src='<%#Eval("PicPath1") %>' class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("Title") %></h5>
                                    <p class="card-text"><%# Eval("Price") %></p>
                                    <a href="ProductDetails.aspx?catID=<%#Eval("CatID")%>&carID=<%#Eval("OID")%>" class="btn btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>--%>
                </asp:DataList>


            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>

