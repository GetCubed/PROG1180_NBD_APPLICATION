using NBDLibrary;
using NBDLibrary.NBD_DataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PROG1180_NBD_APP.DesignBids
{
    public partial class DesignBidCreate : System.Web.UI.Page
    {
        // data reference
        private static NBD_DataSet dsNBD;

        static DesignBidCreate()
        {
            // load data
            dsNBD = new NBD_DataSet();
            ClientTableAdapter daClient = new ClientTableAdapter();     
            try
            {
                daClient.Fill(dsNBD.Client);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlClient_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlClient.SelectedValue != "")
                DisplayClientInfo(Convert.ToInt32(ddlClient.SelectedValue));
            else
                ClientScript.RegisterStartupScript(GetType(), "clearClient", "clearClient()", true);
        }

        private void DisplayClientInfo(int clientID)
        {
            if (dsNBD.Client.Count > 0)
            {
                DataRow client = dsNBD.Client.FindByID(clientID);

                tdClientAddress.InnerHtml = client["address"].ToString();
                tdClientContact.InnerText = client["contact"].ToString();
                tdClientPhone.InnerText = client["phone"].ToString();
            }
        }
    }
}