<%@ Page Title="Design Bids" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBids.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBid.DesignBids" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ObjectDataSource ID="odsDesigners" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.DesignerLookupTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsSalesAssoc" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.SalesAssocLookupTableAdapter"></asp:ObjectDataSource>

    <main class="mt-5">

        <div class="container">


            <!--Section: Main panel- SEARCH BAR----------------->
            <section class="card card-cascade narrower mb-5">

                <!--Card header-->
                <div class="card-header NBDColourDarkBlue white-text text-center">
                    <h4>Search Bids</h4>
                </div>
                <!--/Card header-->

                <!--Panel content-->
                <div class="card-body">


                    <!--Grid row-->
                    <div class="row">
                        <div class="col-lg-11">
                            <h6>Client Name:</h6>
                            <asp:TextBox ID="txtClientName" runat="server" class="form-control input-alternate"></asp:TextBox>
                        </div>

                    </div>

                    <!--Grid row-->
                    <h6>Bid Date Range:</h6>
                    <div class="row">
                        
                        <div class="col-lg-5">
                            Min:
                            <asp:TextBox ID="txtMinDate" runat="server" type="date" class="form-control input-alternate"></asp:TextBox>
                        </div>
                        <div class="col-lg-5">
                            Max:
                            <asp:TextBox ID="txtMaxDate" runat="server" type="date" class="form-control input-alternate"></asp:TextBox>
                        </div>
                    </div>

                    <!--Grid row-->
                    <div class="row">

                        <div class="col-lg-6">
                            <h6>Designer</h6>
                            <asp:DropDownList ID="ddlDesigner" runat="server" AppendDataBoundItems="True" DataSourceID="odsDesigners" DataTextField="designer" DataValueField="designer">
                                <asp:ListItem Selected="True" Value="0">All Designers</asp:ListItem>
                            </asp:DropDownList>
                            
                            <h6>Sales Associate</h6>
                            <asp:DropDownList ID="ddlSalesAssoc" runat="server" AppendDataBoundItems="True" DataSourceID="odsSalesAssoc" DataTextField="salesAssoc" DataValueField="salesAssoc">
                                <asp:ListItem Selected="True" Value="0">All Sales Associates</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-6">
                            <asp:Button ID="btnFilter" runat="server" Text="Filter Results" CssClass="col-lg-4 btn btn-primary" OnClick="btnFilter_Click" />
                            <asp:Button ID="btnClear" runat="server" Text="Clear Filters" CausesValidation="False" CssClass="col-lg-4 btn btn-primary" OnClick="btnClear_Click" />
                        </div>
                    </div>





                </div>


                <!--Section: Main panel- SEARCH BAR----------------->
            </section>
            


            
            <!--Grid row--------------------------------------------------------------------------------------------------------->
            <div class="row">

                <!--Grid column-->
                <div class="col-lg-12">

                    <!--Card-->
                    <div class="card">

                        <!--Card header-->
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4>Design Bids</h4>
                        </div>
                        <!--/Card header-->


                        <!--Card content-->
                        <div class="card-body card-text">
                            <div class="table-responsive">


                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="th-lg">Client</th>
                                            <th class="th-lg">Bid Date</th>
                                            <th class="th-lg">Bid Amount</th>
                                            <th class="th-lg">Designer</th>
                                            <th class="th-lg">Sales Assoc</th>
                                        </tr>
                                    </thead>
                                    <tbody runat="server" id="tboDesignBids"></tbody>
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


</asp:Content>
