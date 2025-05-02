<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="AllMsgs.aspx.cs" Inherits="AllMsgs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <h1 style="text-align:center;" class="text-primary"> All Messages</h1>
        <div class="row"> 
            <div class="col">
            <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Buyer" HeaderText="Buyer" SortExpression="Buyer" />
                    <asp:BoundField DataField="Dated" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Dated" SortExpression="Dated" />
                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                    <asp:ButtonField CommandName="seen" Text="Tick as seen">
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>" SelectCommand="SELECT [Buyer], [Dated], [Message] FROM [Message] WHERE ([Seller] = @Seller)">
                <SelectParameters>
                    <asp:SessionParameter Name="Seller" SessionField="Uname" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
        </div>
            </div>
    </div>
</asp:Content>

