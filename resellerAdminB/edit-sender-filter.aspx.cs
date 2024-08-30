using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class edit_sender_filter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EditSenderFilterBtn_Click(object sender, EventArgs e)
        {
            string script;
            if (senderName.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter Sender name\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (senderStatus.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select sender status\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (customUser.Checked)
            {
                if (filterSenderName.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter custom username\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }
            }

            script = "toastr.success(\"Filter Sender name has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}