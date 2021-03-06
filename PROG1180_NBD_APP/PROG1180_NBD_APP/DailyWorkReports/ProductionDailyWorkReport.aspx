﻿<%@ Page Title="Production Daily Work Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductionDailyWorkReport.aspx.cs" Inherits="PROG1180_NBD_APP.DailyWorkReports.ProductionDailyWorkReport" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <script type="text/javascript">

        $(document).ready(function () {

            $("#btnEdit").click(function () {
                $("td").each(function () {
                    $(this).replaceWith($("<td class='px-4'><input type='text' class='input-alternate' placeholder='"+this.innerText+"'></td> "));
                });
                $(this).replaceWith("<a href='ProductionDailyWorkReports' class='btn btn-primary py-2'>Save </a>");
                $("#title").replaceWith("<h4>Edit Production Daily Work Report<h4>");
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
                            <h4 id="title">Production Daily Work Report</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a class="btn btn-primary py-2" id="btnEdit">Edit </a>
                            </div>
                            <div class="col-lg-4">
                                <a href="ProductionDailyWorkReports" class="btn btn-primary py-2">Delete</a>
                            </div>
                            <div class="col-lg-4">
                                <div class="btn btn-primary active py-2"" data-toggle="buttons">
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
                        <div class="row">
                            <div class="col-lg-6">
                                <table class="table">
                                    <tr>
                                        <th>Date</th>
                                        <td>6/7/2018</td>
                                    </tr>
                                    <tr>
                                        <th>Project</th>
                                        <td>LS MALL</td>
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
                                            <td>cary</td>
                                            <td>5</td>
                                            <td>142</td>
                                            <td>600</td>
                                            <td>Johnson</td>
                                        </tr>
                                        <tr>
                                            <td>cary</td>
                                            <td>5</td>
                                            <td>142</td>
                                            <td>600</td>
                                            <td>Johnson</td>
                                        </tr>
                                       <tr>
                                            <td>cary</td>
                                            <td>5</td>
                                            <td>142</td>
                                            <td>600</td>
                                            <td>Johnson</td>
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

             <!----------------Materials used------------------------------------------------------------------------------------------>
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
                                            <td>Monica</td>
                                            <td>5</td>
                                            <td>18</td>
                                            <td>144</td>
                                            <td>installed plants</td>
                                        </tr>
                                         <tr>
                                            <td>Monica</td>
                                            <td>5</td>
                                            <td>18</td>
                                            <td>144</td>
                                            <td>installed plants</td>
                                        </tr>
                                         <tr>
                                            <td>Monica</td>
                                             <td>5</td>
                                             <td>18</td>
                                             <td>144</td>
                                             <td>installed plants</td>
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
                                                <tr>
                                                    <td>Monica Goce</td>
                                                    <td>May 7, 2018</td>
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

