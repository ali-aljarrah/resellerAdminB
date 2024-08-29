using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class edit_country_cov : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EditCountryBtn_Click(object sender, EventArgs e)
        {
            string script;
            if (serviceOption.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select service option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            bool isNumber = int.TryParse(costByCredit.Value.Trim(), out int result);

            if (costByCredit.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter cost by credits\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!isNumber)
            {
                script = "toastr.error(\"Please enter a valid cost by credits\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (countryMCC.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select country MCC\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (mnc.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter MNC\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (available.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select availability\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (user.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select users group\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Country has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}