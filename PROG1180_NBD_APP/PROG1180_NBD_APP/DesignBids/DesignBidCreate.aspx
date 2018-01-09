<%@ Page Title="Create Design Bid" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignBidCreate.aspx.cs" Inherits="PROG1180_NBD_APP.DesignBids.DesignBidCreate" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <style>
        input[type='text'], input[type='number'], input[type='date']
        {
            width:85%;
            margin-right: 3px;
        }
    </style>
    <script>
        function clearClient()
        {
            $(".clientVal").html("");
        }
    </script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="mt-5">

        <div class="container">

              <asp:ObjectDataSource ID="odsClients" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.ClientLookupTableAdapter"></asp:ObjectDataSource>      
              <asp:ObjectDataSource ID="odsPlants" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.PlantLookupTableAdapter"></asp:ObjectDataSource>
              <asp:ObjectDataSource ID="odsPottery" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.PotteryLookupTableAdapter"></asp:ObjectDataSource>
              <asp:ObjectDataSource ID="odsMaterials" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="NBDLibrary.NBD_DataSetTableAdapters.MaterialLookupTableAdapter"></asp:ObjectDataSource>
     
              <!--Grid row--------------------------------------------------------------------------------------------------------->
            <div class="row mb-3">

                <!--Grid column-->
                <div class="col-lg-12">
                    <!--Panel-->
                    <div class="card">
                        <div class="card-header NBDColourDarkBlue white-text text-center">
                            <h4>Create Design Bid</h4>
                        </div>
                        <div class="row text-center">

                            <div class="col-lg-4">
                                <a class="btn btn-primary py-2" onclick="validate()">Save</a>
                            </div>
                            <div class="col-lg-4">
                                <a href="DesignBids" class="btn btn-primary py-2"">Cancel</a>
                            </div>
                            <div class="col-lg-4">
                                <div class="btn btn-primary py-2" onclick="clearForm()">Clear All</div>
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
                                            <td>
                                                <asp:DropDownList ID="ddlClient" runat="server" DataSourceID="odsClients" DataTextField="cliName" DataValueField="ID" OnSelectedIndexChanged="ddlClient_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">
                                                    <asp:ListItem Selected="True" Value="0">Select a Client...</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Address:</th>
                                           <td id="tdClientAddress" class="clientVal" runat="server"></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Contact:</th>
                                            <td id="tdClientContact" class="clientVal" runat="server"></td>
                                        </tr>
                                        <tr>
                                            <th>Phone:</th>
                                            <td id="tdClientPhone" class="clientVal" runat="server"></td>
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
                                            <td>Bob Reinhardt</td>
                                            
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Designer:</th>
                                            <td><% User.Identity.GetUserName(); %></td>
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
                        <div class="card-body tbl">
                            <p class="reqFieldMsg hidden">* Required Fields</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Bid Date:</th>
                                            <td><input type="date" class="input-alternate required"></td>
                                        </tr>
                                        <tr>
                                            <th>Est. Begin Date:</th>
                                            <td><input type="date" class="input-alternate required"></td>
                                        </tr>
                                        <tr>
                                            <th>Est. Compl. Date:</th>
                                            <td><input type="date" class="input-alternate required"></td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-lg-6">
                                    <table class="table">
                                        <tr>
                                            <th>Project Site:</th>
                                            <td><input type="text" class="input-alternate required"></td>
                                        </tr>
                                        <tr>
                                            <th>Bid Amount:</th>
                                            <td><input type="number" min="0" class="input-alternate required"></td>
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
                            <asp:DropDownList ID="ddlPlants" runat="server" AppendDataBoundItems="True" DataSourceID="odsPlants" DataTextField="matDesc" DataValueField="ID">
                                <asp:ListItem Selected="True" Value="0">Select...</asp:ListItem>
                            </asp:DropDownList>
                            <a class="btn btn-green btn-sm">+</a>
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
                                        <tbody>
                                             <tr>
                                                 <td class="px-4"><input type="number" class="input-alternate"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                             </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>



                            <h6 class="black-text">Pottery</h6>
                            <asp:DropDownList ID="ddlPottery" runat="server" AppendDataBoundItems="True" DataSourceID="odsPottery" DataTextField="matDesc" DataValueField="ID">
                                <asp:ListItem Selected="True" Value="0">Select...</asp:ListItem>
                            </asp:DropDownList>
                            <a class="btn btn-green btn-sm">+</a>
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
                                        <tbody>
                                             <tr>
                                                 <td class="px-4"><input type="number" class="input-alternate"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                            </tr>
                                        </tbody>
                                           
                                        
                                    </table>
                                </div>
                            </div>

                            <h6 class="black-text">Materials</h6>
                            <asp:DropDownList ID="ddlMaterials" runat="server" AppendDataBoundItems="True" DataSourceID="odsMaterials" DataTextField="matDesc" DataValueField="ID">
                                <asp:ListItem Selected="True" Value="0">Select...</asp:ListItem>
                            </asp:DropDownList>
                            <a class="btn btn-green btn-sm">+</a>
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
                                        <tbody>
                                             <tr>
                                                 <td class="px-4"><input type="number" class="input-alternate"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                                 <td class="px-4"></td>
                                            </tr>
                                        </tbody>
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
                                        <tbody>
                                             <tr>
                                                 <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                                 <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                                 <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                                 <td class="px-4"><input type="text" class="input-alternate" placeholder=""></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <a class="btn btn-green btn-sm">+</a>
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
