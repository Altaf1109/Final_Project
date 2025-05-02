<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster2.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="contact_form_13_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap" rel="stylesheet"/>

    <link rel="stylesheet" href="fonts/icomoon/style.css"/>

    <link rel="stylesheet" href="css/owl.carousel.min.css"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
    
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mr-auto">
          <div class="mb-5">
            <h3 class="text-white mb-4">Contact Info</h3>
            <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus blanditiis, perferendis aliquam.</p>
          </div>
          <div class="row">
            <div class="col-md-6">
              <h3 class="text-white h5 mb-3">London</h3>
              <ul class="list-unstyled mb-5">
                <li class="d-flex text-white mb-2">
                  <span class="mr-3"><span class="icon-map"></span></span> 34 Street Name, City Name Here, United States
                </li>
                <li class="d-flex text-white mb-2"><span class="mr-3"><span class="icon-phone"></span></span> +1 (222) 345 6789</li>
                <li class="d-flex text-white"><span class="mr-3"><span class="icon-envelope-o"></span></span> info@mywebsite.com </li>
              </ul>
            </div>
            <div class="col-md-6">
              <h3 class="text-white h5 mb-3">New York</h3>
              <ul class="list-unstyled mb-5">
                <li class="d-flex text-white mb-2">
                  <span class="mr-3"><span class="icon-map"></span></span> 34 Street Name, City Name Here, United States
                </li>
                <li class="d-flex text-white mb-2"><span class="mr-3"><span class="icon-phone"></span></span> +1 (222) 345 6789</li>
                <li class="d-flex text-white"><span class="mr-3"><span class="icon-envelope-o"></span></span> info@mywebsite.com </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="col-lg-6">
          <div class="box">
            <h3 class="heading">Send us a message</h3>
            <%--<form class="mb-5" method="post" id="contactForm" name="contactForm">--%>
              <div class="row">
                
                <div class="col-md-12 form-group">
                  <label for="name" class="col-form-label">Name</label>
                  <asp:TextBox ID="name" CssClass="form-control" runat="server"/>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="email" class="col-form-label">Email</label>
                   <asp:TextBox ID="email" CssClass="form-control" runat="server"/>
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-md-12 form-group">
                  <label for="message" class="col-form-label">Message</label>
                   <asp:TextBox ID="message" CssClass="form-control" runat="server" TextMode="MultiLine" />
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary rounded-0 py-2 px-4" Text="Submit" />
                  <span class="submitting"></span>
                </div>
              </div>
           <%-- </form>--%>

            <div id="form-message-warning mt-4"></div> 
            <div id="form-message-success">
              Your message was sent, thank you!
            </div>
          </div>
        </div>
      </div>
  </div>
        <script src="../Scripts/jquery-3.6.0.min.js"></script>
        <script src="../Scripts/bootstrap.bundle.js"></script>
        <script src="../Scripts/bootstrap.bundle.min.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
</asp:Content>

