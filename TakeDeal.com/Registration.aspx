<%@ Page Title="" Language="C#" MasterPageFile="~/NavMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="css/StyleSheet1.css" />

    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            width: 486px;
        }
        .auto-style3 {
            height: 32px;
            width: 486px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container mt-5 border border-info pb-5 " style="border-radius:20px;width:1000px;">
        <h3 id="lblReg">Registration </h3>

        <table class="w-100">
            <thead>
                <tr class="border-bottom">
                    <th class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Basic Information"></asp:Label>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr class="border-bottom">
                    <td class="auto-style2">Name  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="*  Enter Name ..!" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox ID="txtname" CssClass="form-control mt-1" runat="server" MaxLength="100" />


                    </td>
                    <td rowspan="1">About Information (Optional)    
                        <asp:TextBox ID="txtabout" CssClass="form-control mt-1" runat="server" TextMode="MultiLine" Height="40px" />
                    </td>
                </tr>
                <tr class="border-bottom ">
                    <td class="auto-style3">Email
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="*  Enter Email ..!" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="* Enter correct email ..!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="a"></asp:RegularExpressionValidator>
                        &nbsp;<asp:TextBox ID="email" CssClass="form-control mt-1" runat="server" MaxLength="50" />
                        <br />
                        <%--<div>
                            <asp:Button ID="everify" Width="120px" CssClass="btn-sm btn-outline-info mb-3" runat="server" Text="Verify Email" OnClick="verify_Click" Visible="True" ViewStateMode="Enabled" />
                            <div class="verificationdiv" style="display: flex; align-items: center;">
                                <asp:Label ID="enterotpe" CssClass="ml-3" runat="server" Text="Enter OTP " Visible="False" />
                                <asp:TextBox Style="width: 100px;" ID="otpe" CssClass="form-control mt-1 ml-3" runat="server" Visible="False" />
                                <asp:Label ID="verifymsge" CssClass="ml-3" runat="server" Text="Email Verifyed" Visible="False" />
                            </div>--%>

                    

                    </td>
                    <td class="auto-style1">Mobile Number
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="mobile" ErrorMessage="*  Enter Mobile number ..!" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mobile" ErrorMessage="* Enter correct Mobile no..!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" ValidationGroup="a"></asp:RegularExpressionValidator>
                        &nbsp;<asp:TextBox ID="mobile" CssClass="form-control mt-1" runat="server" MaxLength="10" TextMode="Number" />
                        <br />
                        <%--<div>
                            <asp:Button ID="mverify" Width="120px" CssClass="btn-sm btn-outline-info mb-3" runat="server" Text="Verify mobile" OnClick="mverify_Click" />
                            <div class="verificationdiv" style="display: flex; align-items: center;">
                                <asp:Label ID="enterotpm" CssClass="ml-3" runat="server" Text="Enter OTP " Visible="False" />
                                <asp:TextBox Style="width: 100px;" ID="otpm" CssClass="form-control mt-1 ml-3" runat="server" Visible="False" />
                                <asp:Label ID="verifymsgm" CssClass="ml-3" runat="server" Text="Email Verifyed" Visible="False" />
                            </div>--%>

                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Security Question
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="question" ErrorMessage="* Select security question ..!" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        &nbsp;<asp:DropDownList ID="question" CssClass="form-control mt-1" runat="server">
                             <asp:ListItem Value="Select">Select</asp:ListItem>
                           <asp:ListItem Value="What is your favourite person name?">What is your favourite person name?</asp:ListItem>
                           <asp:ListItem Value="What is your favourite place name?">What is your favourite place name?</asp:ListItem>
                           <asp:ListItem Value="What is your childhood name?">What is your childhood name?</asp:ListItem>
                           <asp:ListItem Value="What is the name of your first school?">What is the name of your first school?</asp:ListItem>
                           <asp:ListItem Value="What is the name of your favorite pet?">What is the name of your favorite pet?</asp:ListItem>
                           <asp:ListItem Value="What high school did you attend?">What high school did you attend?</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        Secure Answer
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="answer" ErrorMessage="*  Enter security answer..!" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox ID="answer" CssClass="form-control mt-1" runat="server" MaxLength="100" />

                    </td>
                </tr>
                <br />
                <tr>
                    <td class="auto-style2">Create Password 
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="*  Enter Password ..!" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox ID="password" CssClass="form-control mt-1" runat="server" MaxLength="20" TextMode="Password" />
                    </td>
                    <td>Confirm Password
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirmpass" ErrorMessage="* Enter confirm password ..!" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                        <br />
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpass" ErrorMessage="* Password must be same " ForeColor="Red"></asp:CompareValidator>
                        &nbsp;<asp:TextBox ID="confirmpass" CssClass="form-control mt-1" runat="server" MaxLength="20" TextMode="Password" />
                    </td>

                </tr>
            </tbody>
        </table>
        <br />

        <asp:Button ID="btnRegister" Width="120px" CssClass="btn-lg btn-primary" runat="server" Text="Register"  ValidationGroup="a" OnClick="btnRegister_Click"  />
        <asp:Label ID="Label2" CssClass="font-monospace ml-5" runat="server" Text="Already have account..? ">
            <asp:HyperLink ID="createAc" NavigateUrl="~/Login.aspx" class="ml-2 font-monospace createAc" runat="server">Login now ...</asp:HyperLink></asp:Label>
    </div>



</asp:Content>

