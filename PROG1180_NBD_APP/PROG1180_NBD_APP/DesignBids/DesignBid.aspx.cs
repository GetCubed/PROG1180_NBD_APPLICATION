using NBDLibrary;
using NBDLibrary.NBD_DataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
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
            try
            {
                daProject.Fill(dsNBD.Project);
                daClient.Fill(dsNBD.Client);
                daWorker.Fill(dsNBD.Worker);
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
                tdBidDate.InnerText = project["projBidDate"].ToString();
                tdBeginDate.InnerText = project["projEstStart"].ToString();
                tdEndDate.InnerText = project["projEstEnd"].ToString();
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
            }
        }
    }
}