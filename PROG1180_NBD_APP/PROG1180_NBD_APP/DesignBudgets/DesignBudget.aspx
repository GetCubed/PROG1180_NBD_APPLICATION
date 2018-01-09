<%@ Page Title="Design Budget" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBudget.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBudgets.DesignBudget" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <script type="text/javascript">

        $(document).ready(function () {

            $("#btnEdit").click(function () {
                $("td").each(function () {
                    $(this).replaceWith($("<td class='px-4'><input type='text' class='input-alternate' placeholder='"+this.innerText+"'></td> "));
                });
                $(this).replaceWith("<a href='DesignBudget' class='btn btn-primary py-2'>Save </a>");
                $("#title").replaceWith("<h4>Edit Design Budget<h4>");
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
                            <h4 id="title">Design Budget</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a class="btn btn-primary py-2" id="btnEdit">Edit </a>
                            </div>
                            <div class="col-lg-4">
                                <a href="DesignBudgets" class="btn btn-primary py-2"">Delete</a>
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
                                            <td >London Sq Mall</td>
                                        </tr>
                                        <tr>
                                            <th>Client Address</th>
                                            <td >123 Mall Drive, Scotts Valley</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Contact</th>
                                            <td>Amy Benson</td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>
                                            <td>(408)843-5603</td>
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

            <!------NBD STAFF-------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">NBD Staff</h5>
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Client Name</th>
                                            <td>Rob Reinhardt</td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>
                                            <td>(289)123-1232</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Designer</th>
                                            <td>Tamara Bakken</td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>
                                            <td>(408)843-5603</td>
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

            <!-- PROJECT-------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Project</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Budget Submitted</th>
                                            <td>April 19, 2016</td>
                                        </tr>
                                        <tr>
                                            <th>Project Site</th>
                                            <td>Main Entrance</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Contact</th>
                                            <td>Amy Benson</td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>
                                            <td>(408)843-5603</td>
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
            <!--PROJECT-------------------------------------------------------------------------------------------------------->


            <!-----------Material Requirements-------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Design Budget</h5>
                        <div class="card-body">

                            <h6 class="black-text">Hours To Date</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                        </tr>
                                        <tr>
                                            <td>Initial client Meeting</td>
                                            <td>April 15</td>
                                            <td>1</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>



                            <h6 class="black-text">Estimated Hours</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                        </tr>
                                        <tr>
                                            <td>Prepare Sketches</td>
                                            <td>April 21</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <td>Prepare Design Bid</td>
                                            <td>April 21</td>
                                            <td>2</td>
                                        </tr>
                                        <tr>
                                            <td>Meet with Client</td>
                                            <td>April 25</td>
                                            <td>2</td>
                                        </tr>


                                    </table>
                                </div>
                            </div>

                            <h6 class="black-text">Total Hours</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <td>7</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>



                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Submitted By</th>
                                            <th>Date</th>
                                        </tr>
                                        <tr>
                                            <td>Tamara Bakken</td>
                                            <td>April 15, 2016</td>
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



           </div>
    </main>
    <!--Main layout-->


</asp:Content>
