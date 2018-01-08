<%@ Page Title="Design Budget" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBudget.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBudgets.DesignBudget" %>



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
                            <h4>Design Budget</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a href="DesignBudget" class="btn btn-primary py-2">Edit </a>
                            </div>
                            <div class="col-lg-4">
                                <a href="DesignBudget" class="btn btn-primary py-2"">Delete</a>
                            </div>
                            <div class="col-lg-4">
                                <div class="btn btn-primary active py-2"" data-toggle="buttons">
                                    Approved
                                <input type="checkbox" checked="checked">
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
                                            <td>Client Name</td>
                                            <td>London Sq Mall</td>
                                        </tr>
                                        <tr>
                                            <td>Client Address</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <td>Contact</td>
                                            <td>Amy Benson</td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
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

            <!--NBD STAFF-------------------------------------------------------------------------------------------------------->
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
                                            <td>Client Name</td>
                                            <td>London Sq Mall</td>
                                        </tr>
                                        <tr>
                                            <td>Client Address</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <td>Contact</td>
                                            <td>Amy Benson</td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
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
                                            <td>Client Name</td>
                                            <td>London Sq Mall</td>
                                        </tr>
                                        <tr>
                                            <td>Client Address</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <td>Contact</td>
                                            <td>Amy Benson</td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
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
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
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
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                        </tr>
                                        <tr>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                        </tr>
                                        <tr>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                            <td>123 Mall Drive, Scotts Valley</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>

                            <h6 class="black-text">Total Hours</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td>12</td>

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
