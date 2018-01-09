<%@ Page Title="Production Daily Work Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductionDailyWorkReports.aspx.cs" Inherits="PROG1180_NBD_APP.DailyWorkReports.ProductionDailyWorkReports" %>


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
                            <h4>Production Daily Work Reports</h4>
                        </div>
                        <!--/Card header-->


                        <!--Card content-->
                        <div class="card-body card-text">
                            <div class="table-responsive">


                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th>Lead Worker</th>
                                            <th>Date</th>
                                            <th>Project</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Monica Goce</td>
                                            <td>6/16/2016</td>
                                            <td>LS Mall</td>
                                            <td><a href='ProductionDailyWorkReport' class='btn btn-primary py-1'>View</a></td>
                                        </tr>
                                        <tr>
                                            <td>Monica Goce</td>
                                            <td>6/17/2016</td>
                                            <td>LS Mall</td>
                                            <td><a href='ProductionDailyWorkReport' class='btn btn-primary py-1'>View</a></td>
                                        </tr>
                                        <tr>
                                            <td>Monica Goce</td>
                                            <td>6/18/2016</td>
                                            <td>LS Mall</td>
                                            <td><a href='ProductionDailyWorkReport' class='btn btn-primary py-1'>View</a></td>
                                        </tr>
                                        <tr>
                                            <td>Monica Goce</td>
                                            <td>6/18/2016</td>
                                            <td>LS Mall</td>
                                            <td><a href='ProductionDailyWorkReport' class='btn btn-primary py-1'>View</a></td>
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

        </div>
    </main>
    <!--Main layout-->


</asp:Content>
