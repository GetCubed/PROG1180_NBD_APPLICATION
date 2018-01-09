<%@ Page Title="Design Budgets" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBudgets.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBudgets.DesignBudgets" %>


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
                            <h4>Design Budgets</h4>
                        </div>
                        <!--/Card header-->


                        <!--Card content-->
                        <div class="card-body card-text">
                            <div class="table-responsive">


                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th>Client</th>
                                            <th>Budget Date</th>
                                            <th>Est. Total Hours</th>
                                            <th>Designer</th>
                                            <th>Sales Assoc</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>London Square Mall</td>
                                            <td>May 10, 2011</td>
                                            <td>12</td>
                                            <td>Tamara Bakken</td>
                                            <td>Bob Reinhardt</td>
                                            <td><a href='DesignBudget' class='btn btn-primary py-1'>View</a></td>

                                        </tr>
                                        <tr>
                                            <td>Niagara OutletN</td>
                                            <td>May 10, 2012</td>
                                            <td>13</td>
                                            <td>Yakubu Alheri</td>
                                            <td>Bob Reinhardt</td>
                                            <td><a href='DesignBudget' class='btn btn-primary py-1'>View</a></td>

                                        </tr>
                                        <tr>
                                            <td>Soccer Niagara</td>
                                            <td>May 10, 2013</td>
                                            <td>14</td>
                                            <td>Sandile Abubakar</td>
                                            <td>Bob Reinhardt</td>
                                            <td><a href='DesignBudget' class='btn btn-primary py-1'>View</a></td>

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
