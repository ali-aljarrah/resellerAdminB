using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void editAccountInfoSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;

            if (accountType.Value.Trim() == "")
            {
                script = "toastr.error(\"Select the account type!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (accountStatus.Value.Trim() == "")
            {
                script = "toastr.error(\"Select the account status!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Account information updated successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void editContactDetailsSubmitBtn_Click(object sender, EventArgs e)
        {
            string script = "toastr.success(\"Contact details updated successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void changePasswordSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;

            if (oldPassword.Value.Trim() == "")
            {
                script = "toastr.error(\"Enter the account old password!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newPassword.Value.Trim() == "")
            {
                script = "toastr.error(\"Enter the account new password!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (confirmNewPassword.Value.Trim() == "")
            {
                script = "toastr.error(\"Confirm the account new password!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (confirmNewPassword.Value.Trim() != newPassword.Value.Trim())
            {
                script = "toastr.error(\"Confirm password is not correct!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            oldPassword.Value = "";
            newPassword.Value = "";
            confirmNewPassword.Value = "";

            script = "toastr.success(\"Account password updated successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}