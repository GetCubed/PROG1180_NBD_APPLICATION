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
            ProjectLookupTableAdapter daProjects = new ProjectLookupTableAdapter();
            try
            {
                daClient.Fill(dsNBD.Client);
                daProjects.Fill(dsNBD.ProjectLookup);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (dsNBD.Client.Count > 0)
            {
                // select and display all Clients
                rows = dsNBD.Client.Select();
                DisplayClients();
            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            if (dsNBD.Client.Count > 0)
            {
                tboClients.Controls.Clear(); // clear existing results

                // select and display filtered Client list
                rows = dsNBD.Client.Select(GetClientCriteria());
                DisplayClients();
            }
        }

        // builds and returns a WHERE clause string for selecting Clients
        // based on the filters specified by the user
        private string GetClientCriteria()
        {
            string criteria = "";
            // client name (contains)
            if (txtClientName.Text.Length > 0)
                criteria = "cliName LIKE '*" + txtClientName.Text + "*'";
            // city
            if (ddlCity.SelectedValue != "0")
                criteria += And(criteria) + "cityID = " + ddlCity.SelectedValue;
            // province/state
            if (ddlProvince.SelectedValue != "0")
                criteria += And(criteria) + "cliProvince = '" + ddlProvince.SelectedValue + "'";

            return criteria;
        }

        // returns " AND " if the argument string's length is > 0 -- otherwise returns ""
        // useful for building a WHERE clause with potentially many conditions
        private string And(string s)
        {
            return s.Length > 0 ? " AND " : "";
        }

        private void DisplayClients()
        {
            if (rows.Length > 0)
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

                    string clientID = row["ID"].ToString();

                    // create an extra cell for the Client's Design Bid list
                    HtmlGenericControl tdBids = new HtmlGenericControl();
                    tdBids.TagName = "td";

                    // create an extra cell for the Client's Design Bid list
                    HtmlGenericControl tdViewClient = new HtmlGenericControl();
                    tdBids.TagName = "td";

                    // create an extra cell for the select buttons
                    HtmlGenericControl tdEditClient = new HtmlGenericControl();
                    tdEditClient.TagName = "td";
                    tdEditClient.InnerHtml = "<a href='../Clients/ClientEdit' class='btn btn-primary' style='padding: 0.1rem 1.5rem';> Edit Client</a>";                  

                    // select the client's bids
                    DataRow[] bids = dsNBD.ProjectLookup.Select("clientID = " + clientID);

                    if (bids.Length > 0)
                    {
                        // build a string for the ddl
                        string dropdown = "<select id='ddl" + clientID + "' onchange='redirectToBid(this.getAttribute(\"id\"))'><option selected>Select to View Bid...</option>";
                       

                        foreach (DataRow r in bids)
                            dropdown += "<option value = '" + r["ID"].ToString() + "'>" + r["projName"].ToString() + "</option>";

                        dropdown += "</select>";

                        // put the ddl in the cell
                        tdBids.InnerHtml = dropdown;                  
                    }
                    else
                        tdBids.InnerHtml = "None";

                    

                    // add the content to the row and append the row to the table body
                    tr.Controls.Add(tdBids);
                    tr.Controls.Add(tdEditClient);
                    tboClients.Controls.Add(tr);
                    
                }
            }
            else
                tboClients.InnerHtml = "<td class='text-danger'>No Results</td>";
        }

        // clears filters
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtClientName.Text = "";
            ddlCity.SelectedValue = "0";
            ddlProvince.SelectedValue = "0";
        }
    }
}