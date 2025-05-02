<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/btn.css" />
    <script>
       
        
    </script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container mt-2">
    <div class="main-body">
    
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
              <li class="breadcrumb-item"><a href="javascript:void(0)">User</a></li>
              <li class="breadcrumb-item active" aria-current="page">User Profile</li>
            </ol>
          </nav>
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4>
                          <asp:Label ID="Label4" runat="server" Text=""></asp:Label></h4>
                        <div class="row">
                            <div class="col">
                                <span>Description:</span>
                            </div>
                            <div class="col">
                                <p class="text-muted font-size-sm"> <asp:Label ID="Label8" runat="server" Text="Description" /></p>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <span>Address</span>
                            </div>
                            <div class="col">
                                <p class="text-secondary mb-1"> <asp:Label ID="Label5" runat="server" Text="" /></p>
                            </div>

                        </div>
                      
                      <button class="btn btn-primary">Follow</button>
                      <button class="btn btn-outline-primary">Message</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                    <span class="text-secondary">https://bootdey.com</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                    <span class="text-secondary">@bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <span style="font-size:15pt;" class="mb-0">Full Name</span>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:Label ID="Label1" runat="server" Text="Girish Sutrave"></asp:Label>
                    </div>
                  </div>
                  <hr/>
                  <div class="row">
                    <div class="col-sm-3">
                      <span style="font-size:15pt;" class="mb-0">Email</span>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:Label ID="Label2" runat="server" Text="giri@gmail.com"></asp:Label>
                    </div>
                  </div>
                  <hr/>
                  <div class="row">
                    <div class="col-sm-3">
                      <span style="font-size:15pt;" class="mb-0">Mobile No.</span>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <asp:Label ID="Label3" runat="server" Text="7972649807"></asp:Label>
                    </div>
                  </div>          
                  <hr/>
                  <%--<div class="row">
                    <div class="col-sm-3">
                      <span style="font-size:15pt;" class="mb-0">Address</span>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      
                    </div>
                  </div>--%>
                    <hr />
                    <div class="row">
                    <div class="col">
                      <span style="font-size:15pt;" class="mb-0">Yours Security Questrion</span> <br /> 
                       <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </div>
                        <div class="col">
                      <span style="font-size:15pt;" class="mb-0">Yours Secure Answer </span> <br /> 
                       <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </div>
                   </div>
                    <hr />
                  <div class="row">
                    <div class="col-sm-12">
                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn-info " runat="server" NavigateUrl="~/EditProfile.aspx">Edit</asp:HyperLink>
                      <%--<a class="btn btn-info " target="__blank" href="EditProfile.aspx">Edit</a>--%>
                    </div>
                  </div>
                </div>
              </div>


                <%--<asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                        <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
                        <asp:BoundField DataField="KMDriven" HeaderText="KMDriven" SortExpression="KMDriven" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    </Columns>
                </asp:GridView>--%>



                <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyCon %>" DeleteCommand="DELETE FROM Cars WHERE (CarID = @CarID)" SelectCommand="SELECT [Brand], [Year], [Transmission], [KMDriven], [Title], [Price] FROM [Cars] WHERE ([UserID] = @UserID) ORDER BY [CarID]" UpdateCommand="UPDATE Cars SET Brand = @Brand, Year = @Year, KMDriven = @KMDriven, Title = @Title, Price = @Price WHERE (CarID = @CarID)">
                    <DeleteParameters>
                        <asp:Parameter Name="CarID" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="UserID" SessionField="UName" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Brand" />
                        <asp:Parameter Name="Year" />
                        <asp:Parameter Name="KMDriven" />
                        <asp:Parameter Name="Title" />
                        <asp:Parameter Name="Price" />
                        <asp:Parameter Name="CarID" />
                    </UpdateParameters>
                </asp:SqlDataSource>--%>


            </div>
          </div>

        </div>
    </div>
</asp:Content>

