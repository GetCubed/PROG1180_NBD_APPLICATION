<%@ Page Title="Edit Client" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientEdit.aspx.cs" Inherits="PROG1180_NBD_APP.Clients.ClientEdit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="mt-5">

        <div class="container">


            <!--Grid row--------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">

                <!--Grid column-->
                <div class="col-lg-12">
                    <!--Panel-->
                    <div class="card">
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4>Edit Client</h4>
                        </div>
                    </div>
                    <!--/.Panel-->
                </div>
            </div>




            <!--Client Info-------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Client Info</h5>

                        <div class="card-body">
                            <div class="row">

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Client Name</th>
                                            <td><input type="text" class="input-alternate" placeholder="London Sq Mall"></td>
                                        </tr>
                                        <tr>
                                            <th>Client Address</th>
                                            <td><input type="text" class="input-alternate" placeholder="123 Mall Drive, Scotts Valley"></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Contact</th>
                                            <td><input type="text" class="input-alternate" placeholder="John Doe"></td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>                                        
                                            <td><input type="text" class="input-alternate" placeholder="(408)843-5603"></td>
                                        </tr>
                                    </table>
                                </div>

                            </div>

                            <!-- --- submit button -->
                            <a href="Clients.aspx" class="btn btn-primary">Save</a>
                        </div>

                    </div>
                    <!--/.Panel-->
                </div>
                <!--Grid column-->
            </div>
            <!--Grid row-->


            


        </div>
    </main>
    <!--Main layout-->



</asp:Content>
