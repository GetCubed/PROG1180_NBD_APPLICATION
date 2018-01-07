<%@ Page Title="Design Bids" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBids.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBid.DesignBids" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="mt-5">

        <div class="container">



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
                                            <th class="th-lg"></th>
                                        </tr>
                                    </thead>
                                    <tbody id="tboDesignBids" runat="server"></tbody>
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
