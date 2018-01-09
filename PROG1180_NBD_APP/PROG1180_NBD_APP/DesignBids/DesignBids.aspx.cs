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
    public partial class DesignBids : Page
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
                // select and display all Bids
                rows = dsNBD.BidLookup.Select();
                DisplayBids();
            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            if (dsNBD.BidLookup.Count > 0)
            {
                // clear the existing results
                tboDesignBids.Controls.Clear();

                // select and display a filtered list of Bids
                rows = dsNBD.BidLookup.Select(GetBidCriteria());
                DisplayBids();
            }
        }

        // displays the list of bids
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

                    string[] fields = new string[] { "cliName", "displayDate", "displayAmount", "designer", "salesAssoc" };// the fields to be displayed

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
            else // display status message
                tboDesignBids.InnerHtml = "<td class='text-danger'>No Results</td>";
        }

        // builds and returns a WHERE clause string for selecting Bids
        // based on the filters specified by the user
        private string GetBidCriteria()
        {
            string criteria = "";
            // Client Name (contains)
            if (txtClientName.Text.Length > 0)
                criteria = "cliName LIKE '*" + txtClientName.Text + "*'";
            // minimum Bid Date
            if (txtMinDate.Text.Length > 0)
                criteria += And(criteria) + "bidDate >= '" + txtMinDate.Text + "'";
            // maximum Bid Date
            if (txtMaxDate.Text.Length > 0)
                criteria += And(criteria) + "bidDate <= '" + txtMaxDate.Text + "'";
            // designer
            if (ddlDesigner.SelectedValue != "0")
                criteria += And(criteria) + "designer = '" + ddlDesigner.SelectedValue + "'";
            // sales associate
            if (ddlSalesAssoc.SelectedValue != "0")
                criteria += And(criteria) + "salesAssoc = '" + ddlSalesAssoc.SelectedValue + "'";
            return criteria;
        }

        // returns " AND " if the argument string's length is > 0 -- otherwise returns ""
        // useful for building a WHERE clause with potentially many conditions
        private string And(string s)
        {
            return s.Length > 0 ? " AND " : "";
        }

        // clears all filters
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtClientName.Text = "";
            txtMinDate.Text = "";
            txtMaxDate.Text = "";
            ddlDesigner.SelectedValue = "0";
            ddlSalesAssoc.SelectedValue = "0";
        }
    }
}