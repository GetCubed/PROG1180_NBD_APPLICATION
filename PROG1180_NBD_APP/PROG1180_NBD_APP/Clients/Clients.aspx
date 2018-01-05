<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="PROG1180_NBD_APP.Clients.Clients" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="mt-5">

        <div class="container">

           
            <!--Grid row--------------------------------------------------------------------------------------------------------->
            <div class="row">

                <!--Grid column-->
                <div class="col-lg-12">

                    <!--Card-->
                    <div class="card">

                        <!--Card header-->
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4>Clients</h4>
                        </div>
                        <!--/Card header-->
                        <asp:Label ID="lblStatus" runat="server"></asp:Label>

                        <!--Card content-->
                        <div class="card-body card-text">
                            <div class="table-responsive">


                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="th-lg">Client</th>
                                            <th class="th-lg">Address</th>
                                            <th class="th-lg">Contact</th>
                                            <th class="th-lg">Phone</th>
                                        </tr>
                                    </thead>
                                    <tbody runat="server" ID="tboClients">
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <!--/.Card content-->

                    </div>
                    <!--/.Card-->


                </div>


            </div>
        </div>
    </main>
    <!--Main layout-->


</asp:Content>
