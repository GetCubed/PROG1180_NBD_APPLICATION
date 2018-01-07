<%@ Page Title="Design Bid" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBid.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBid.DesignBid" %>


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
                            <h4>Design Bid</h4>
                        </div>

                        <!--Checkbox butons-->
                        <div class="row text-center" >
                            <div class="col-lg-4">
                                <div class="btn btn-primary">
                                    Edit Design Bid
                                </div>
                                
                            </div>
                            <div class="col-lg-4 ">
                                <div class="btn btn-primary">
                                    Delete Design Bid
                                </div>
                                
                            </div>
                            <div class="col-lg-4 " >
                                <div class="btn btn-primary active" data-toggle="buttons">
                                    Approved By Manager
                                <input type="checkbox" checked>
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
                                            <th>Client Name:</th>
                                            <td runat="server" id="tdClientName"></td>
                                        </tr>
                                        <tr>
                                            <th>Address:</th>
                                            <td runat="server" id="tdClientAddress"></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Contact:</th>
                                            <td runat="server" id="tdClientContact"></td>
                                        </tr>
                                        <tr>
                                            <th>Phone:</th>
                                            <td runat="server" id="tdClientPhone"></td>
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
                                            <th>Sales Assoc:</th>
                                            <td runat="server" id="tdSalesAssoc"></td>

                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Designer:</th>
                                            <td runat="server" id="tdDesigner"></td>
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
                                            <th>Bid Date:</th>
                                            <td runat="server" id="tdBidDate"></td>
                                        </tr>
                                        <tr>
                                            <th>Est. Begin Date:</th>
                                            <td runat="server" id="tdBeginDate"></td>
                                        </tr>
                                        <tr>
                                            <th>Est. Compl. Date:</th>
                                            <td runat="server" id="tdEndDate"></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Project Site:</th>
                                            <td runat="server" id="tdProjectSite"></td>
                                        </tr>
                                        <tr>
                                            <th>Bid Amount:</th>
                                            <td runat="server" id="tdBidAmount"></td>
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
                        <h5 class="card-title black-text">Material Requirements</h5>
                        <div class="card-body">

                            <h6 class="black-text">Plants</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="th-lg">Quantity</th>
                                                <th class="th-lg">Description</th>
                                                <th class="th-lg">Size</th>
                                                <th class="th-lg">Unit Price</th>
                                                <th class="th-lg">Extended Price</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tboPlants" runat="server"></tbody>
                                    </table>
                                </div>
                            </div>



                            <h6 class="black-text">Pottery</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="th-lg">Quantity</th>
                                                <th class="th-lg">Description</th>
                                                <th class="th-lg">Size</th>
                                                <th class="th-lg">Unit Price</th>
                                                <th class="th-lg">Extended Price</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tboPottery" runat="server"></tbody>
                                    </table>
                                </div>
                            </div>

                            <h6 class="black-text">Materials</h6>
                            <div class="row mb-1">
                                <div class="col-lg-12">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="th-lg">Quantity</th>
                                                <th class="th-lg">Description</th>
                                                <th class="th-lg">Size</th>
                                                <th class="th-lg">Unit Price</th>
                                                <th class="th-lg">Extended Price</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tboMaterials" runat="server"></tbody>
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



            <!-----------Labor Requirements-------------------------------------------------------------------------------------------------->
            <div class="row mb-3">
                <!--Grid column-->
                <div class="col-md-12">
                    <!--Panel-->
                    <div class="card card-body">
                        <h5 class="card-title black-text">Labor Requirements</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="th-lg">Hours</th>
                                                <th class="th-lg">Description</th>
                                                <th class="th-lg">Unit Price</th>
                                                <th class="th-lg">Extended Price</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tboLabour" runat="server"></tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!--/.Panel-->
                </div>
                <!--Grid column-->
            </div>

        </div>
        <!---Labor Requirements------------------------------------------------------------------------------------------------------->
    </main>
    <!--Main layout-->


</asp:Content>
