// Clydesdale Solutions
// Ken Henderson
using NBDLibrary;
using NBDLibrary.NBD_DataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PROG1180_NBD_APP.DesignBids
{
    public partial class DesignBid : Page
    {
        // data reference
        private static NBD_DataSet dsNBD;
        private static string catcher;

        static DesignBid()
        {
            // load data
            dsNBD = new NBD_DataSet();
            ProjectTableAdapter daProject = new ProjectTableAdapter();
            ClientTableAdapter daClient = new ClientTableAdapter();
            WorkerTableAdapter daWorker = new WorkerTableAdapter();
            MaterialReqTableAdapter daMatReq = new MaterialReqTableAdapter();
            LabourReqTableAdapter daLabReq = new LabourReqTableAdapter();
            try
            {
                daProject.Fill(dsNBD.Project);
                daClient.Fill(dsNBD.Client);
                daWorker.Fill(dsNBD.Worker);
                daMatReq.Fill(dsNBD.MaterialReq);
                daLabReq.Fill(dsNBD.LabourReq);
            }
            catch (DataException dex){ catcher = dex.Message; }// added a dex catcher
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            string projectID = Request.QueryString["Project"]; // get the passed projectID from the url
            bool editStatus = Convert.ToBoolean(Request.QueryString["Edit"]); // get the passed Edit Status

            if (projectID != null && Regex.IsMatch(projectID, @"^\d+$")) // make sure projectID is numeric
                DisplayBid(Convert.ToInt32(projectID), editStatus);
        }

        // displays all info for the selected Project's Design Bid
        private void DisplayBid(int projectID, bool editStatus)
        {
            DataRow project = dsNBD.Project.FindByID(projectID);

            if (project != null)
            {
                // project info   
                tdBidDate.InnerHtml = editStatus ? "<input type='text' class='input-alternate' placeholder=' " + project["bidDate"].ToString() + " '>" : project["bidDate"].ToString();
                tdBeginDate.InnerHtml = editStatus ? "<input type='text' class='input-alternate' placeholder=' " + project["startDate"].ToString() + " '>" : project["startDate"].ToString();
                tdEndDate.InnerHtml = editStatus ? "<input type='text' class='input-alternate' placeholder=' " + project["endDate"].ToString() + " '>" : project["endDate"].ToString();
                tdProjectSite.InnerHtml = editStatus ? "<input type='text' class='input-alternate' placeholder=' " + project["projSite"].ToString() + " '>" : project["projSite"].ToString();
                tdBidAmount.InnerHtml = editStatus ? "<input type='text' class='input-alternate' placeholder=' " + "$" + project["projEstCost"].ToString() + " '>" : "$" + project["projEstCost"].ToString();


                // client info
                DataRow row = dsNBD.Client.FindByID(Convert.ToInt32(project["clientID"]));
                tdClientName.InnerText = row["cliName"].ToString();
                tdClientAddress.InnerHtml = row["address"].ToString();
                tdClientContact.InnerText = row["contact"].ToString();
                tdClientPhone.InnerText = row["phone"].ToString();

                // NBD staff
                //row = dsNBD.Worker.FindByID(Convert.ToInt32(project["salesAssocID"]));
                row = dsNBD.Worker.FindByID(4); //Hard coded Bob
                tdSalesAssoc.InnerText = row["fullName"].ToString();
                row = dsNBD.Worker.FindByID(Convert.ToInt32(project["designerID"]));
                tdDesigner.InnerText = row["fullName"].ToString();

                // material requirements
                DataRow[] rows = dsNBD.MaterialReq.Select("projectID = " + projectID);
                foreach (DataRow r in rows)
                {
                    // create a new <tr> element for each row
                    HtmlGenericControl tr = new HtmlGenericControl();
                    tr.TagName = "tr";

                    string[] fields = new string[] { "qty", "matDesc", "size", "unitPrice", "extendedPrice" };// the fields to be displayed

                    // create a new cell for each display field in the row
                    for (int i = 0; i < fields.Length; i++)
                    {
                        HtmlGenericControl td = new HtmlGenericControl();
                        td.TagName = "td";
                        td.InnerHtml = r[fields[i]].ToString();
                        tr.Controls.Add(td);
                    }

                    // add row to table based on material type
                    switch (r["matType"].ToString())
                    {
                        case "Plant":
                            tboPlants.Controls.Add(tr);
                            break;
                        case "Pottery":
                            tboPottery.Controls.Add(tr);
                            break;
                        default:
                            tboMaterials.Controls.Add(tr);
                            break;
                    }
                }

                // labour requirements
                rows = dsNBD.LabourReq.Select("projectID = " + projectID);
                foreach (DataRow r in rows)
                {
                    // create a new <tr> element for each row
                    HtmlGenericControl tr = new HtmlGenericControl();
                    tr.TagName = "tr";

                    string[] fields = new string[] { "hours", "descr", "unitPrice", "extendedPrice" };// the fields to be displayed

                    // create a new cell for each display field in the row
                    for (int i = 0; i < fields.Length; i++)
                    {
                        HtmlGenericControl td = new HtmlGenericControl();
                        td.TagName = "td";
                        td.InnerHtml = r[fields[i]].ToString();
                        tr.Controls.Add(td);
                    }
                    // add row to table
                    tboLabour.Controls.Add(tr);
                }
            }
        }
    }
}