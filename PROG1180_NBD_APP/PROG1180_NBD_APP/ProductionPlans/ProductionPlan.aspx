<%@ Page Title="Production Plan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductionPlan.aspx.cs" Inherits="PROG1180_NBD_APP.ProductionPlans.ProductionPlan" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <script type="text/javascript">

        $(document).ready(function () {

            $("#btnEdit").click(function () {
                $("td").each(function () {
                    $(this).replaceWith($("<td class='px-4'><input type='text' class='input-alternate' placeholder='"+this.innerText+"'></td> "));
                });
                $(this).replaceWith("<a href='ProductionPlan' class='btn btn-primary py-2'>Save </a>");
                $("#title").replaceWith("<h4>Edit Production Plan<h4>");
            });

        });
    </script>

    <main class="mt-5">

        <div class="container">


            <!--Grid row--------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">

                <!--Grid column-->
                <div class="col-lg-12">
                    <!--Panel-->
                    <div class="card">
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4 id="title">Production Plan</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a class="btn btn-primary py-2" id="btnEdit">Edit </a>
                            </div>
                            <div class="col-lg-4">
                                <a href="ProductionPlans" class="btn btn-primary py-2"">Delete</a>
                            </div>
                            <div class="col-lg-4">
                                <div class="btn btn-primary py-2"" data-toggle="buttons">
                                    Approved
                                </div>
                            </div>
                        </div>


                    </div>
                    <!--/.Panel-->
                </div>
            </div>


            <!-----Project Bid Information------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Project Bid Information</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Project</th>
                                            <td>LS Mall</td>
                                        </tr>
                                        <tr>
                                            <th>Begin Date</th>
                                            <td>June 16, 2016</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Project Site</th>
                                            <td>Main Entrance</td>
                                        </tr>
                                        <tr>
                                            <th>Bid Amount</th>
                                            <td>$7651</td>
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

            <!--NBD STAFF-------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Project Team</h5>
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Sales Assoc</th>
                                            <td>Rob Reinhardt</td>
                                        </tr>
                                        <tr>
                                            <th>Designer</th>
                                            <td>Tamara Bakken</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Production</th>
                                            <td>Sue Kaufman, Monica Goce, Bert Swenson</td>
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
            <!--NBD STAFF-------------------------------------------------------------------------------------------------------->

            <!-----------Material Requirements-------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Material Requirements</h5>
                        <div class="card-body">

                            <h6 class="black-text">Plants</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>QNTY</th>
                                            <th>Code</th>
                                            <th>Size</th>
                                            <th>Net/Unit</th>
                                            <th>Est. Cost</th>
                                            <th>Deliver</th>
                                            <th>Install</th>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
                                        </tr>
                                         <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>



                            <h6 class="black-text">Pottery</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>QNTY</th>
                                            <th>Code</th>
                                            <th>Size</th>
                                            <th>Net/Unit</th>
                                            <th>Est. Cost</th>
                                            <th>Deliver</th>
                                            <th>Install</th>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
                                        </tr>
                                         <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>


                            <h6 class="black-text">Materials</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>QNTY</th>
                                            <th>Code</th>
                                            <th>Size</th>
                                            <th>Net/Unit</th>
                                            <th>Est. Cost</th>
                                            <th>Deliver</th>
                                            <th>Install</th>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
                                        </tr>
                                         <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>


                            <h6 class="black-text">Tools</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>QNTY</th>
                                            <th>Code</th>
                                            <th>Size</th>
                                            <th>Net/Unit</th>
                                            <th>Est. Cost</th>
                                            <th>Deliver</th>
                                            <th>Install</th>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
                                        </tr>
                                         <tr>
                                            <td>3</td>
                                            <td>lacco</td>
                                            <td>15 gal</td>
                                            <td>450</td>
                                            <td>1350</td>
                                            <td>6/16@8am</td>
                                            <td>6/16</td>
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
            <!---Material Requirements-------------------------------------------------------------------------------------------------------->


            <!----------Labor Requirements------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Labor Requirements</h5>
                        <div class="card-body">

                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Desc</th>
                                            <th>Hours</th>
                                            <th>Cost/Hr</th>
                                            <th>Est. Cost</th>
                                            <th>Time</th>
                                            <th>Tasks</th>
                                        </tr>
                                        <tr>
                                            <td>Tamara</td>
                                            <td>12</td>
                                            <td>40</td>
                                            <td>480</td>
                                            <td>by 6/10</td>
                                            <td>Bid Process</td>
                                        </tr>
                                         <tr>
                                            <td>Tamara</td>
                                            <td>12</td>
                                            <td>40</td>
                                            <td>480</td>
                                            <td>by 6/10</td>
                                            <td>Bid Process</td>
                                        </tr>
                                         <tr>
                                            <td>Tamara</td>
                                            <td>12</td>
                                            <td>40</td>
                                            <td>480</td>
                                            <td>by 6/10</td>
                                            <td>Bid Process</td>
                                        </tr>
                                         <tr>
                                            <td>Tamara</td>
                                            <td>12</td>
                                            <td>40</td>
                                            <td>480</td>
                                            <td>by 6/10</td>
                                            <td>Bid Process</td>
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
            <!---Material Requirements-------------------------------------------------------------------------------------------------------->

            
            <!--------total est designer hours/costs------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h6 class="card-title black-text">Total Est. Designer Hours/Costs</h6>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Bid Process</th>
                                            <td>12</td>
                                            <td>$480</td>
                                        </tr>
                                        <tr>
                                            <th>Production</th>
                                            <td>12</td>
                                            <td>$480</td>
                                        </tr>
                                        <tr>
                                            <th>Total Est. Prod. Labor Hours/Costs</th>
                                            <td>12</td>
                                            <td>$480</td>
                                        </tr>
                                        <tr>
                                            <th>Total Est. Material Costs</th>
                                            <td>12</td>
                                            <td>$480</td>
                                        </tr>
                                        <tr>
                                            <th>Total Est. Hours/Costs</th>
                                            <td>12</td>
                                            <td>$480</td>
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
            <!--Client Info-------------------------------------------------------------------------------------------------------->
        </div>

    </main>
    <!--Main layout-->


</asp:Content>

