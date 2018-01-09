<%@ Page Title="Create Designer Daily Work Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignerDailyWorkReportCreate.aspx.cs" Inherits="PROG1180_NBD_APP.DailyWorkReports.DesignerDailyWorkReportCreate" %>

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
                            <h4>Create Designer Daily Work Report</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a href="DesignerDailyWorkReports" class="btn btn-primary py-2">Save </a>
                            </div>
                            <div class="col-lg-4">
                                <a href="DesignerDailyWorkReports" class="btn btn-primary py-2"">Cancel</a>
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
                        <div class="row">
                            <div class="col-lg-6">
                                <table class="table">
                                    <tr>
                                        <th>Name</th>
                                        <td><input type="text" class="input-alternate" placeholder=""></td>
                                    </tr>
                                    <tr>
                                        <th>Date</th>
                                        <td><input type="text" class="input-alternate" placeholder=""></td>
                                    </tr>
                                    <tr>
                                        <th>Project</th>
                                        <td><input type="text" class="input-alternate" placeholder=""></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!--/.Panel-->
                </div>
                <!--Grid column-->
            </div>
            <!--Grid row-->

            <!----------------Materials used------------------------------------------------------------------------------------------>
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Materials Used</h5>
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Code</th>
                                            <th>QTY</th>
                                            <th>Unit Cost</th>
                                            <th>Ext. Cost</th>
                                            <th>Approved By</th>
                                        </tr>
                                        <tr>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
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

            <!--------------Labor----------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Labor</h5>
                        <div class="card-body ">
                            <div class="row">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <tr>
                                            <th>Worker</th>
                                            <th>Hours</th>
                                            <th>Cost/Hr</th>
                                            <th>Ext. Cost</th>
                                            <th>Task</th>
                                        </tr>
                                        <tr>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                        </tr>

                                    </table>

                                    <h6 class="black-text">Total Cost of Materials</h6>
                                    <div class="row mb-1">
                                        <div class="col-lg-12">
                                            <table class="table">
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                     <td class="px-4">
                                                        <input type="text" class="input-alternate" placeholder=""></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>



                                    <div class="row mb-1">
                                        <div class="col-lg-12">
                                            <table class="table">
                                                <tr>
                                                    <th>Submitted By</th>

                                                    <td class="px-4">
                                                        <input type="text" class="input-alternate" placeholder=""></td>

                                                </tr>

                                            </table>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <!--/.Panel-->
                </div>
                <!--Grid column-->
            </div>
            <!--------labor--------------------------------------------------------------------------------------------->
        </div>



    </main>
    <!--Main layout-->


</asp:Content>

