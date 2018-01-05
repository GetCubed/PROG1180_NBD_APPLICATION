// Clydesdale Solutions
// Ken Henderson
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NBDLibrary;
using NBDLibrary.NBD_DataSetTableAdapters;
using System.Data;
using System.Web.UI.HtmlControls;

namespace PROG1180_NBD_APP.Clients
{
    public partial class Clients : Page
    {
        // data reference
        private static NBD_DataSet dsNBD;

        // current search records reference
        private static DataRow[] rows;
        
        static Clients()
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
            if (dsNBD.Client.Count > 0)
            {
                rows = dsNBD.Client.Select();
                DisplayClients();
            }
            
        }

        private void DisplayClients()
        {
            // loop through client records
            foreach (DataRow row in rows)
            {
                // create a new <tr> element for each record
                HtmlGenericControl tr = new HtmlGenericControl();
                tr.TagName = "tr";

                string[] fields = new string[] { "cliName", "address", "contact", "phone" };// the fields to be displayed

                // create a new cell for each display field in the row
                for (int i = 0; i < fields.Length; i++)
                {
                    HtmlGenericControl td = new HtmlGenericControl();
                    td.TagName = "td";
                    td.InnerHtml = row[fields[i]].ToString();
                    tr.Controls.Add(td);
                }
                // append the row to the table body
                tboClients.Controls.Add(tr);
            }
        }
    }
}