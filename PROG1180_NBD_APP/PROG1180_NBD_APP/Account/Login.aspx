<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROG1180_NBD_APP.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <main class="mt-5">
        <div class="row">

            <!--Panel-->
            <div class="card text-center mx-5" style="width: 100%;">
                <div class="card-header NBDColourDarkBlue white-text">
                    Login
                </div>

                <div class="card-body card-text">

                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>


                    <!-- EMAIL LOGIN -->
                    <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-12 control-label text-left">
                        <i class="fa fa-envelope prefix grey-text"></i>Email
                    </asp:Label>

                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />

                    <!-- PASSWORD LOGIN -->
                    <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-12 control-label text-left">  <i class="fa fa-lock prefix grey-text"></i>Password</asp:Label>
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />

                    <!-- login button -->
                    <div class="col-md-offset-2 col-md-10">
                        <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                    </div>


                </div>
                <div class="card-footer text-muted NBDColourDarkBlue white-text">
                    <span style="display: none">
                        <asp:CheckBox type="hidden" runat="server" ID="RememberMe" />
                        <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                    </span>
                </div>
            </div>
            <!--/.Panel-->




            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>

        </div>
    </main>


</asp:Content>
