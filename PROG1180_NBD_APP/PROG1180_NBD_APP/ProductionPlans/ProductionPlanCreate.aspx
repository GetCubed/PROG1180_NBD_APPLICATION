<%@ Page Title="Production Plan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductionPlanCreate.aspx.cs" Inherits="PROG1180_NBD_APP.ProductionPlans.ProductionPlanCreate" %>
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
                            <h4>Production Plan</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a href="ProductionPlans" class="btn btn-primary py-2">Save </a>
                            </div>
                            <div class="col-lg-4">
                                <a href="ProductionPlans" class="btn btn-primary py-2"">Cancel</a>
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
                        <h5 class="card-title black-text">Project Bid Information</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Client Name</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                        <tr>
                                            <th>Client Address</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Contact</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
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
                                            <th>Client Name</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                        <tr>
                                            <th>Client Address</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Contact</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
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
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                        </tr>
                                        <tr>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>

                                    </table>
                                </div>
                            </div>



                            <h6 class="black-text">Pottery</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                        </tr>
                                        <tr>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>


                                    </table>
                                </div>
                            </div>


                            <h6 class="black-text">Materials</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                        </tr>
                                        <tr>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>

                                    </table>
                                </div>
                            </div>


                            <h6 class="black-text">Tools</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                        </tr>
                                        <tr>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
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
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                            <th>Task</th>
                                            <th>Date</th>
                                            <th>Hours</th>
                                        </tr>
                                        <tr>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
                                            <td class="px-4"><input type='text' class='input-alternate' placeholder="" /></td>
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


            <!-----------Project Bid Information---------------------------------------------------------------------------------------------->
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
                                            <td>Client Name</td>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Client Address</td>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <td>Contact</td>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
                                            <td><input type='text' class='input-alternate' placeholder="" /></td>
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

