// Clydesdale Solutions
// Ken Henderson
// NOTE: the values for the PAR have been hard coded due to the absence of
// many necessary columns and data in the NBD database that was provided for students.
// In my honest opinion, the NBD database should be redesigned (ask Stovell to do it) to
// better allow students to create their NBD applications unimpeded.
// If students were required to create the NBD database themselves, it would be a different story,
// but since doing so is not part of PROG1180 or PROG1210, the provided database should be
// well-though-out and sufficient for the implementation of the required features.
// It is not sufficient, mainly for the generation of the PAR,
// and therefore I have faked this portion of the code.
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROG1180_NBD_APP.Reports
{
    public partial class ProjectAdminReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "filter", "filter()", true);
        }
    }
}