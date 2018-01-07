<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="PROG1180_NBD_APP.Clients.Clients" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <script type="text/javascript">
        function redirectToBid(ddlID) {
            window.location.replace("../DesignBids/DesignBid?Project=" + $("#" + ddlID).val());
        }
    </script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="mt-5">

        <div class="container">



            <!--Section: Main panel-->
            <section class="card card-cascade narrower mb-5">

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-lg-12">

                        <!--Card header-->
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4>Search Clients</h4>
                        </div>
                        <!--/Card header-->

                        <!--Panel content-->
                        <div class="card-body">

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-lg-11">
                                    <h6>Client Name</h6>
                                    <asp:TextBox ID="txtClientName" runat="server" class="form-control input-alternate"></asp:TextBox>
                                </div>
                                <!--Grid column-->
                            </div>
                            <!--Grid row-->

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-lg-3">
                                    <h6>City</h6>
                                    <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="True" DataSourceID="odsCities" DataTextField="city" DataValueField="cityID">
                                        <asp:ListItem Selected="True" Value="0">All Cities</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <!--Grid column-->


                                <!--Grid column-->
                                <div class="col-lg-3">
                                    <h6>Province/State</h6>
                                        <asp:DropDownList ID="ddlProvince" runat="server" AppendDataBoundItems="True" DataSourceID="odsProvinces" DataTextField="cliProvince" DataValueField="cliProvince">
                                            <asp:ListItem Selected="True" Value="0">All Provinces/States</asp:ListItem>
                                        </asp:DropDownList>
                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-lg-6">
                                    
                                        <asp:Button ID="Button1" runat="server" Text="Filter Results" OnClick="btnFilter_Click" CssClass="col-lg-4 btn btn-primary" />

                                        <asp:Button ID="Button2" runat="server" Text="Clear Filters" CausesValidation="False" OnClick="btnClear_Click" CssClass="col-lg-4 btn btn-primary" />
                                    

                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->


                        </div>
                        <!--Panel content-->

                    </div>
                    <!--Grid column-->



                </div>
                <!--Grid row-->

            </section>
            <!--Section: Main panel-->







            <!--Grid row--------------------------------------------------------------------------------------------------------->
            <div class="row">

                <!--Grid column-->
                <div class="col-lg-12">

                    <!--Card-->
                    <div class="card">

                        <!--Card header-->
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4>Clients</h4>
                        </div>
                        <!--/Card header-->

                        <!--Card content-->
                        <div class="card-body card-text">
                            <div class="table-responsive">


                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="th-lg">Client Name</th>
                                            <th class="th-lg">Address</th>
                                            <th class="th-lg">Contact</th>
                                            <th class="th-lg">Phone</th>
                                            <th class="th-lg">Design Bids</th>
                                            <th class="th-lg"></th>
                                        </tr>
                                    </thead>
                                    <tbody runat="server" id="tboClients">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--/.Card content-->

                    </div>
                    <!--/.Card-->


                </div>


            </div>
        </div>
    </main>
    <!--Main layout-->


    <asp:ObjectDataSource ID="odsCities" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.CityListTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsProvinces" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.ProvinceListTableAdapter"></asp:ObjectDataSource>


</asp:Content>
