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

namespace PROG1180_NBD_APP.DesignBid
{
    public partial class DesignBid : Page
    {
        // data reference
        private static NBD_DataSet dsNBD;

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
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            string projectID = Request.QueryString["Project"]; // get the passed projectID from the url

            if (projectID != null && Regex.IsMatch(projectID, @"^\d+$")) // make sure projectID is numeric
                DisplayBid(Convert.ToInt32(projectID));
        }

        // displays all info for the selected Project's Design Bid
        private void DisplayBid(int projectID)
        {
            DataRow project = dsNBD.Project.FindByID(projectID);

            if (project != null)
            {
                // project info
                tdBidDate.InnerText = project["bidDate"].ToString();
                tdBeginDate.InnerText = project["startDate"].ToString();
                tdEndDate.InnerText = project["endDate"].ToString();
                tdProjectSite.InnerText = project["projSite"].ToString();
                tdBidAmount.InnerText = "$" + project["projEstCost"].ToString();

                // client info
                DataRow row = dsNBD.Client.FindByID(Convert.ToInt32(project["clientID"]));
                tdClientName.InnerText = row["cliName"].ToString();
                tdClientAddress.InnerHtml = row["address"].ToString();
                tdClientContact.InnerText = row["contact"].ToString();
                tdClientPhone.InnerText = row["phone"].ToString();

                // NBD staff
                row = dsNBD.Worker.FindByID(Convert.ToInt32(project["salesAssocID"]));
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