// Clydesdale Solutions
// Ken Henderson
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

namespace PROG1180_NBD_APP.DesignBid
{
    public partial class DesignBids : System.Web.UI.Page
    {
        // data reference
        private static NBD_DataSet dsNBD;

        // current search records reference
        private static DataRow[] rows;

        static DesignBids()
        {
            // load data
            dsNBD = new NBD_DataSet();
            BidLookupTableAdapter daBidLookup = new BidLookupTableAdapter();
            try
            {
                daBidLookup.Fill(dsNBD.BidLookup);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (dsNBD.BidLookup.Count > 0)
            {
                // select and display all Clients
                rows = dsNBD.BidLookup.Select();
                DisplayBids();
            }
        }

        private void DisplayBids()
        {
            if (rows.Length > 0)
            {
                // loop through client records
                foreach (DataRow row in rows)
                {
                    // create a new <tr> element for each record
                    HtmlGenericControl tr = new HtmlGenericControl();
                    tr.TagName = "tr";

                    string[] fields = new string[] { "cliName", "bidDate", "bidAmount", "designerID", "salesAssocID" };// the fields to be displayed

                    // create a new cell for each display field in the row
                    for (int i = 0; i < fields.Length; i++)
                    {
                        HtmlGenericControl td = new HtmlGenericControl();
                        td.TagName = "td";
                        td.InnerHtml = row[fields[i]].ToString();
                        tr.Controls.Add(td);
                    }

                    // create an extra cell for the select buttons
                    HtmlGenericControl tdSelectBid = new HtmlGenericControl();
                    tdSelectBid.TagName = "td";
                    tdSelectBid.InnerHtml = "<a href='DesignBid?Project=1' class='btn btn-primary py-1'>View</a>";

                    tr.Controls.Add(tdSelectBid);
                    tboDesignBids.Controls.Add(tr);
                }
            }
        }
    }
}