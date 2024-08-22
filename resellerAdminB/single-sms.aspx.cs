using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class single_sms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string script = "";

            if (txtSender.Value.Trim() == "" || txtSender.Value.Length > 18)
            {
                script = "toastr.error(\"Sender Name can't be empty and must be less than 18 characters!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (cmbMessageType.Value == "")
            {
                script = "toastr.error(\"Please select message type!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (txtNumber.Value.Trim() == "" || !int.TryParse(txtNumber.Value, out _))
            {
                script = "toastr.error(\"Please enter mobile a valid number!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (txtMessage.Value == "")
            {
                script = "toastr.error(\"Please enter message to send!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Message has been sent Successfully!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void SaveTemplateSubmitBtn_Click(object sender, EventArgs e)
        {
            string script = "";

            if (templateName.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter template name!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Template saved Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}