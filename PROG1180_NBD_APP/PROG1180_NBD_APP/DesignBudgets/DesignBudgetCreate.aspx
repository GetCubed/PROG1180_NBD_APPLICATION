<%@ Page Title="Create Design Budget" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBudgetCreate.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBudgets.DesignBudgetCreate" %>



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
                            <h4>Create Design Budget</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a href="DesignBudgets" class="btn btn-primary py-2">Save </a>
                            </div>
                            <div class="col-lg-4">
                                <a href="DesignBudgets" class="btn btn-primary py-2"">Cancel</a>
                            </div>
                            <div class="col-lg-4">
                                <div class="btn btn-primary py-2">Clear All</div>
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
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                        <tr>
                                            <td>Client Address</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <td>Contact</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
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
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                        <tr>
                                            <td>Client Address</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <td>Contact</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
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
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                        <tr>
                                            <td>Client Address</td>
                                           <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <td>Contact</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>
                                        <tr>
                                            <td>Phone</td>
                                            <td><input type="text" class="input-alternate" placeholder=""></td>
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


            <!------------------------------------------------------------------------------------------------------------>
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
                                            
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
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
                                            
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>       
                                        </tr>
                                        <tr>

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
                                            <td><input type="text" class="input-alternate" placeholder=""></td>

                                        </tr>

                                    </table>
                                </div>
                            </div>


      
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Submitted By</th>
                                           <td><input type="text" class="input-alternate" placeholder=""></td>
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


    </div><!--container-->
           
    </main>
    <!--Main layout-->


</asp:Content>
