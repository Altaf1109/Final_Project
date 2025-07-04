﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="css/btn.css" />
    <script>
       
        
    </script>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-2">
        <div class="main-body">

            <!-- Breadcrumb -->
            <nav aria-label="breadcrumb" class="main-breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
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
                                    <asp:FileUpload ID="pic" CssClass="form-control ml-3 mb-3 " runat="server" Text ="Select Image" Enabled="True" />
                                    <div class="row">
                                        <div class="col-4">
                                            <span>Description</span>
                                        </div>
                                        <div class="col-8">

                                            <asp:TextBox ID="Description" CssClass="form-control mb-2" runat="server" MaxLength="100"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                            <span>Address</span>
                                        </div>
                                        <div class="col-8 mb-2">
                                            <asp:TextBox CssClass="form-control" ID="Address" runat="server" MaxLength="100"></asp:TextBox>
                                        </div>

                                    </div>
                                    
                                    <%--<button class="btn btn-primary">Follow</button>
                                    <button class="btn btn-outline-primary">Message</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card mt-3">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                <h6 class="mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline">
                                        <circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                                <span class="text-secondary">https://bootdey.com</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                <h6 class="mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline">
                                        <path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                                <span class="text-secondary">bootdey</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                <h6 class="mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info">
                                        <path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                                <span class="text-secondary">@bootdey</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                <h6 class="mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger">
                                        <rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                                <span class="text-secondary">bootdey</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                <h6 class="mb-0">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary">
                                        <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
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
                                    <span style="font-size: 15pt;" class="mb-0">Full Name</span>&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FullName" ErrorMessage="Enter your name" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-sm-9 text-secondary">

                                    <asp:TextBox ID="FullName" CssClass="form-control" runat="server" MaxLength="100" ToolTip="name" Enabled="False" ValidationGroup="a"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-sm-3">
                                    <span style="font-size: 15pt;" class="mb-0">Email</span>&nbsp;
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Enter email" ForeColor="Red" ValidationGroup="a" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-sm-9 text-secondary">

                                    <asp:TextBox CssClass="form-control" ID="Email" runat="server" Enabled="False" EnableTheming="True" ValidationGroup="a"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-sm-3">
                                    <span style="font-size: 15pt;" class="mb-0">Mobile No.</span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Mobile" ErrorMessage="Enter your mobile no." ForeColor="Red" ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-sm-9 text-secondary">

                                    <asp:TextBox CssClass="form-control" ID="Mobile" runat="server" MaxLength="10" ValidationGroup="a"></asp:TextBox>
                                </div>
                            </div>

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
                                    <span style="font-size: 15pt;" class="mb-0">Yours Security Questrion</span>
                                    <br />
                                    <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                                    &nbsp;
                                    <asp:DropDownList ID="question" CssClass="form-control mt-1" runat="server" ValidationGroup="a">
                                        <asp:ListItem Value="Select">Select</asp:ListItem>
                                        <asp:ListItem Value="What is your favourite person name?">What is your favourite person name?</asp:ListItem>
                                        <asp:ListItem Value="What is your favourite place name?">What is your favourite place name?</asp:ListItem>
                                        <asp:ListItem Value="What is your childhood name?">What is your childhood name?</asp:ListItem>
                                        <asp:ListItem Value="What is the name of your first school?">What is the name of your first school?</asp:ListItem>
                                        <asp:ListItem Value="What is the name of your favorite pet?">What is the name of your favorite pet?</asp:ListItem>
                                        <asp:ListItem Value="What high school did you attend?">What high school did you attend?</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <span style="font-size: 15pt;" class="mb-0">Yours Secure Answer</span>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Answer" ErrorMessage="Enter your answer" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    <br />

                                    <asp:TextBox ID="Answer" CssClass="form-control" runat="server" MaxLength="100" ValidationGroup="a"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-sm-12">
                                    <asp:Button ID="Button1" CssClass="btn btn-info " runat="server" Text="Save Changes" OnClick="Button1_Click" ValidationGroup="a" />
                                    <%--<a class="btn btn-info " target="__blank" href="#">Save Changes</a>--%>
                                </div>
                            </div>
                        </div>
                    </div>





                </div>
            </div>

        </div>
    </div>
</asp:Content>

