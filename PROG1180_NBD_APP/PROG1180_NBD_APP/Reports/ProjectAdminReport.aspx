<%@ Page Title="Project Admin Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectAdminReport.aspx.cs" Inherits="PROG1180_NBD_APP.Reports.ProjectAdminReport" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <style type="text/css">
        .hidden {display:none}
    </style>
    <script type="text/javascript">
        function filter()
        {
            $(mc + "noResults").hide();

            var mc = "#MainContent_", // this string is prepended to all controls within the MainContent placeholder section
                minDate = $(mc + "txtMinDate").val(),
                maxDate = $(mc + "txtMaxDate").val(),
                bidDate,
                redFlag = $(mc + "chkRedFlag").prop("checked");
            // show all projects, then hide the ones that don't match the filters
            $(".project").removeClass("hidden").each(function ()
            {
                bidDate = $(this).prop("class").split(" ")[1];

                if ((minDate != "" && minDate > bidDate) || (maxDate != "" && maxDate < bidDate) || (redFlag && !$(this).hasClass("redFlag")))
                    $(this).addClass("hidden");
            });
			
			// show "no results" message in empty tables
            var rows;
            $("tbody").each(function () {
                var rows = $(this).children().not(".hidden");

                if (rows.length == 1) // only heading row is visible
                    $(this).find(".noResults").removeClass("hidden");
            });
        }
    </script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="mt-5">

        <div class="container">

            <!--Section: Main panel- SEARCH BAR----------------->
            <section class="card card-cascade narrower mb-5">

                <!--Card header-->
                <div class="card-header NBDColourDarkBlue white-text text-center">
                    <h4>Search Project Admin Reports</h4>
                </div>
                <!--/Card header-->


                <!--card body-->
                <div class="card-body">

                    <!--Grid row-->
                    <div class="row">
                        <div class="col-lg-11">
                            <h6>Min Date</h6>
                            <asp:TextBox ID="txtMinDate" type="date" runat="server" class="form-control input-alternate"></asp:TextBox>
                            <h6>Max Date</h6>
                            <asp:TextBox ID="txtMaxDate" type="date" runat="server" class="form-control input-alternate"></asp:TextBox>

                        </div>

                        <div class="col-lg-12">
                            <div class="row text-center">
                                <div class="col-lg-4">

                                    <div class="btn btn-primary">
                                        Flagged Projects
                                     <asp:CheckBox ID="chkRedFlag" runat="server" />
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                     <asp:Button ID="btnFilter" runat="server" Text="Filter Results" CssClass="btn btn-primary" OnClick="btnFilter_Click" />
                                </div>
                                <div class="col-lg-4">
                                    <asp:Button ID="btnClear" runat="server" Text="Clear Filters" CssClass="btn btn-primary" />
                                </div>      
                            </div>
               

                        </div>

                    </div>

                </div>





                <!--Section: Main panel- SEARCH BAR----------------->
            </section>



            

           

           
            <!--Grid row--------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">

                <!--Grid column-->
                <div class="col-lg-12">
                    <!--Panel-->
                    <div class="card">
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4>Project Admin Report</h4>
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
                                    <table class="table projTable">
                                        <tr>
                                            <th>Project</th>
                                            <th>Bid Date</th>
                                            <th>Est. Bid</th>
                                            <th>Actual/Est Design Hours</th>
                                            <th>Actual/Est Design Costs</th>
                                            <th>Hrs/$ Remaining</th>
                                        </tr>
                                        <tr class="project 2017-10-11">
                                            <td>Astor</td>
                                            <td>October 11, 2011</td>
                                            <td>$13,000</td>
                                            <td>6/20</td>
                                            <td>$240/$800</td>
                                            <td>14/$660</td>
                                        </tr>
                                        <tr class="project 2017-11-28">
                                            <td>Freemont</td>
                                            <td>November 28, 2011</td>
                                            <td>$16,250</td>
                                            <td>9/25</td>
                                            <td>$360/$1000</td>
                                            <td>16/$640</td>
                                        </tr>
                                        <tr class="project 2017-11-16 redFlag">
                                            <td>SJSU</td>
                                            <td>December 16, 2011</td>
                                            <td>$5,000</td>
                                            <td class="text-danger">9/8</td>
                                            <td class="text-danger">$360/$320</td>
                                            <td class="text-danger">-1/-$40</td>
                                        </tr>
                                        <tr class="noResults hidden">
                                            <td class="text-info">No results</td>
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
                        <h5 class="card-title black-text">Bid Stage Projects</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <table class="table projTable">
                                        <tr>
                                            <th>Project</th>
                                            <th>Bid Date</th>
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
                                        <tr class="project 2017-06-06 redFlag">
                                            <td>LS Mall</td>
                                            <td>June 6, 2011</td>
                                            <td>$7,651.50</td>
                                            <td>$5,110</td>
                                            <td class="text-danger">$5,265</td>
                                            <td class="text-danger">$3,255</td>
                                            <td>$3,240</td>
                                            <td class="text-danger">$1,008</td>
                                            <td>$990</td>
                                            <td>$880</td>
                                            <td>$880</td>
                                        </tr>
                                        <tr class="project 2017-08-01">
                                            <td>IBM</td>
                                            <td>August 1, 2011</td>
                                            <td>$11,500</td>
                                            <td>$6,290</td>
                                            <td>$5,705</td>
                                            <td>$3,525</td>
                                            <td>3,850</td>
                                            <td>$1,260</td>
                                            <td>$1,440</td>
                                            <td>$920</td>
                                            <td>$1,000</td>
                                        </tr>
                                        <tr class="noResults hidden">
                                            <td class="text-info">No results</td>
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


