<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PROG1180_NBD_APP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--Main layout-->
    <main class="mt-4">

        <!--Main container-->
        <div class="container">

            <asp:LoginView ID="RoleCards" runat="server" ViewStateMode="Disabled">
                <RoleGroups>
                    <asp:RoleGroup Roles="TestAdmin">
                        <ContentTemplate>

                            <!---------------------Title---------------------------------------------------------------------------------------->
                            <div class="row mb-3">

                                <!--Grid column-->
                                <div class="col-lg-12">
                                    <!--Panel-->
                                    <div class="card mb-4 NBDColourDarkBlue">
                                        <div class="card-header  white-text text-center">
                                            <h4>Welcome <%:User.Identity.GetUserName() %></h4>
                                        </div>
                                    </div>


                                    <!--Grid row-->
                                    <div class="row">

                                        <!--Grid column-->
                                        <div class="col-lg-4 mb-4">

                                            <!--Card-->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay hm-white-slight">
                                                    <img src="/Images/designBid.png" class="img-fluid" alt="">
                                                    <a href="#">
                                                        <div class="mask"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">
                                                    <!--Title-->
                                                    <h4 class="card-title">Design Bid</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Needs Approval</p>
                                                    <table class="table">
                                                        <tr>
                                                            <th>Designer:</th>
                                                            <td>Tamara</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Client:</th>
                                                            <td>LS Mall</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date:</th>
                                                            <td>May 6, 11</td>
                                                        </tr>
                                                    </table>
                                                    <a href="/DesignBids/DesignBid?Project=1" class="btn btn-primary">View Design Bid</a>
                                                </div>

                                            </div>
                                            <!--/.Card-->

                                        </div>
                                        <!--Grid column-->

                                        <!--Grid column-->
                                        <div class="col-lg-4 mb-4">

                                            <!--Card-->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay hm-white-slight">
                                                    <img src="/Images/productionPlan.png" class="img-fluid" alt="">
                                                    <a href="#">
                                                        <div class="mask"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">
                                                    <!--Title-->
                                                    <h4 class="card-title">Production Plan</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Needs Approval</p>
                                                    <table class="table">
                                                        <tr>
                                                            <th>Designer:</th>
                                                            <td>Tamara</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Client:</th>
                                                            <td>LS Mall</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date:</th>
                                                            <td>May 6, 11</td>
                                                        </tr>
                                                    </table>
                                                    <a href="/ProductionPlans/ProductionPlan" class="btn btn-primary">View Production Plan</a>
                                                </div>

                                            </div>
                                            <!--/.Card-->

                                        </div>
                                        <!--Grid column-->

                                        <!--Grid column-->
                                        <div class="col-lg-4 mb-4">

                                            <!--Card-->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay hm-white-slight">
                                                    <img src="/Images/designBudget.png" class="img-fluid" alt="">
                                                    <a href="#">
                                                        <div class="mask"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">
                                                    <!--Title-->
                                                    <h4 class="card-title">Design Budget</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Needs Approval</p>
                                                    <table class="table">
                                                        <tr>
                                                            <th>Designer:</th>
                                                            <td>Tamara</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Client:</th>
                                                            <td>LS Mall</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date:</th>
                                                            <td>May 6, 11</td>
                                                        </tr>
                                                    </table>
                                                    <a href="/DesignBudgets/DesignBudget" class="btn btn-primary">View Design Budget</a>
                                                </div>

                                            </div>
                                            <!--/.Card-->

                                        </div>
                                        <!--Grid column-->

                                        <!--Grid column-->
                                        <div class="col-lg-4 mb-4">

                                            <!--Card-->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay hm-white-slight">
                                                    <img src="/Images/designBudget.png" class="img-fluid" alt="">
                                                    <a href="#">
                                                        <div class="mask"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">
                                                    <!--Title-->
                                                    <h4 class="card-title">Design Budget</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Needs Approval</p>
                                                    <table class="table">
                                                        <tr>
                                                            <th>Designer:</th>
                                                            <td>Tamara</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Client:</th>
                                                            <td>LS Mall</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date:</th>
                                                            <td>May 6, 11</td>
                                                        </tr>
                                                    </table>
                                                    <a href="/DesignBudgets/DesignBudget" class="btn btn-primary">View Design Budget</a>
                                                </div>

                                            </div>
                                            <!--/.Card-->

                                        </div>
                                        <!--Grid column-->

                                        <!--Grid column-->
                                        <div class="col-lg-4 mb-4">

                                            <!--Card-->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay hm-white-slight">
                                                    <img src="/Images/productionPlan.png" class="img-fluid" alt="">
                                                    <a href="#">
                                                        <div class="mask"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">
                                                    <!--Title-->
                                                    <h4 class="card-title">Production Plan</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Needs Approval</p>
                                                    <table class="table">
                                                        <tr>
                                                            <th>Designer:</th>
                                                            <td>Tamara</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Client:</th>
                                                            <td>LS Mall</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date:</th>
                                                            <td>May 6, 11</td>
                                                        </tr>
                                                    </table>
                                                    <a href="/ProductionPlans/ProductionPlan" class="btn btn-primary">View Production Plan</a>
                                                </div>

                                            </div>
                                            <!--/.Card-->

                                        </div>
                                        <!--Grid column-->

                                        <!--Grid column-->
                                        <div class="col-lg-4 mb-4">

                                            <!--Card-->
                                            <div class="card">

                                                <!--Card image-->
                                                <div class="view overlay hm-white-slight">
                                                    <img src="/Images/designBid.png" class="img-fluid" alt="">
                                                    <a href="#">
                                                        <div class="mask"></div>
                                                    </a>
                                                </div>

                                                <!--Card content-->
                                                <div class="card-body">
                                                    <!--Title-->
                                                    <h4 class="card-title">Design Bid</h4>
                                                    <!--Text-->
                                                    <p class="card-text">Needs Approval</p>
                                                    <table class="table">
                                                        <tr>
                                                            <th>Designer:</th>
                                                            <td>Tamara</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Client:</th>
                                                            <td>LS Mall</td>
                                                        </tr>
                                                        <tr>
                                                            <th>Date:</th>
                                                            <td>May 6, 11</td>
                                                        </tr>
                                                    </table>
                                                    <a href="/DesignBids/DesignBid?Project=1" class="btn btn-primary">View Design Bid</a>
                                                </div>
                                            </div>
                                            <!--/.Card-->
                                        </div>
                                        <!--Grid column-->

                                    </div>
                                    <!--Grid row-->

                                </div>
                            </div>







                        </ContentTemplate>
                    </asp:RoleGroup>
                </RoleGroups>
                <AnonymousTemplate>
                    <div class="col-md-12">
                        <!--Featured image -->
                        <img src="../Images/NBDLogo.png" class="img-fluid">
                    </div>
                </AnonymousTemplate>
            </asp:LoginView>





        </div>

    </main>
    <!--Main layout-->

</asp:Content>
