<%@ Page Title="Production Plans" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductionPlans.aspx.cs"  Inherits="PROG1180_NBD_APP.ProductionPlans.ProductionPlans" %>

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
                            <h4>Production Plans</h4>
                        </div>
                        <!--/Card header-->


                        <!--Card content-->
                        <div class="card-body card-text">
                            <div class="table-responsive">


                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th class="th-lg">First column</th>
                                            <th class="th-lg">Second column</th>
                                            <th class="th-lg">Third column</th>
                                            <th class="th-lg">Fourth column</th>
                                            <th class="th-lg">Fifth column</th>
                                            <th class="th-lg">Sixth column</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                            <td>Lorem Ipsum</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <!--/.Card content-->

                    </div>
                    <!--/.Card-->


                </div>


            </div>
            <a href="ProductionPlan" class="btn btn-primary">Prod Plan Test</a>
        </div>
    </main>
    <!--Main layout-->


</asp:Content>

