using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class send_email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void sendEmailSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;

            if (emailRecipient.Value == "")
            {
                script = "toastr.error('Please select email recipient'); showSendEmailModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (emailMessage.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter the email\'s message\"); showSendEmailModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Email sent Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}