using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class api : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void generateNewAPIKeyBtn_Click(object sender, EventArgs e)
        {
            string script = "toastr.success(\"A new API key has been added Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void save_ip_addresses_Click(object sender, EventArgs e)
        {
            if (ip_addresses.Value.Trim() == "")
            {
                string script = "toastr.success(\"White-Listed IP has been disabled Successfully!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }
            else
            {
                string script = "toastr.success(\"White-Listed IP has been enabled Successfully!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }
        }
    }
}