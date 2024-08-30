using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class edit_keyword_filter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EditSpamFilterBtn_Click(object sender, EventArgs e)
        {
            string script;
            if (spamWord.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter spam keyword\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (spamStatus.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select spam keyword status\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (customUser.Checked)
            {
                if (filterSpamWordUsername.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter custom username\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }
            }

            script = "toastr.success(\"Filter spam keyword has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}