<%@ Page Title="Project Admin Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectAdminReport.aspx.cs" Inherits="PROG1180_NBD_APP.Reports.ProjectAdminReport" %>


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
                            <h4>Project Administration Report for</h4>
                            
                        </div>
                        <div class="card-footer text-center">
                           
                            <h5><%: DateTime.Now.ToString("D") %></h5>
                        </div>

                    </div>
                    <!--/.Panel-->
                </div>
            </div>



            <!-------------------------Bid Stage Projects-------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Bid Stage Projects</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Project</th>
                                            <th>Est. Bid</th>
                                            <th>Actual/Est Design Hours</th>
                                            <th>Actual/Est Design Costs</th>
                                            <th>Hrs/$ Remaining</th>
                                        </tr>
                                        <tr>
                                            <td>Astor</td>
                                            <td>13000</td>
                                            <td>6/20</td>
                                            <td>240/800</td>
                                            <td>14/16</td>
                                        </tr>
                                        <tr>
                                            <td>Astor</td>
                                            <td>13000</td>
                                            <td>6/20</td>
                                            <td>240/800</td>
                                            <td>14/16</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/.Panel-->
                </div>
                <!--Grid column-->
            </div>
            <!--Grid row-->

              <!-------------------------Production Stage Projects-------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Production Stage Projects</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Project</th>
                                            <th>Bid $</th>
                                            <th>Prod Plan Est.</th>
                                            <th>Total Cost To Date</th>
                                            <th>Actual Mtl $</th>
                                            <th>Est. Mtl $ </th>
                                            <th>Actual Labor $ Prod </th>
                                            <th>Est Labor Prod </th>
                                            <th>Actual Labor $ Design </th>
                                            <th>Est. Labor $ Design </th>
                                        </tr>
                                        <tr>
                                            <td>Astor</td>
                                            <td>13000</td>
                                            <td>6/20</td>
                                            <td>240/800</td>
                                            <td>14/16</td>
                                            <td>Astor</td>
                                            <td>13000</td>
                                            <td>6/20</td>
                                            <td>240/800</td>
                                            <td>14/16</td>
                                        </tr>
                                        <tr>
                                            <td>Astor</td>
                                            <td>13000</td>
                                            <td>6/20</td>
                                            <td>240/800</td>
                                            <td>14/16</td>
                                            <td>Astor</td>
                                            <td>13000</td>
                                            <td>6/20</td>
                                            <td>240/800</td>
                                            <td>14/16</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
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


