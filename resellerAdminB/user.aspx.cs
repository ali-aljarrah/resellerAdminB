using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMessageSubmitBtn_Click(object sender, EventArgs e)
        {
            string script = "";

            if (messageSubject.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter message subject!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (messageBody.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter message content!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            messageSubject.Value = "";
            messageBody.Value = "";

            script = "toastr.success(\"Message has been sent successfully!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void AddCreditsSubmitBtn_Click(object sender, EventArgs e)
        {
            string script = "";

            bool isNumber = int.TryParse(creditsAmount.Value.Trim(), out int result);

            if (creditsAmount.Value.Trim() == "" )
            {
                script = "toastr.error(\"Enter a valid credit amount!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!isNumber)
            {
                script = "toastr.error(\"Enter a valid credit amount!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                creditsAmount.Value = "";
                return;
            }

            creditsAmount.Value = "";

            script = "toastr.success(\"Credit added successfully!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void EditAccountInfoSubmitBtn_Click(object sender, EventArgs e)
        {
            string script = "";

            if (accountType.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select the account type!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (accountStatus.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select the account status!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Account information updated successfully!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void EditContactDetailsSubmitBtn_Click(object sender, EventArgs e)
        {
            string script = "toastr.success(\"Account Contact details updated successfully!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void ChangePasswordSubmitBtn_Click(object sender, EventArgs e)
        {
            string script = "";

            if (oldPassword.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter the account current password!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newPassword.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter the account new password!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (confirmNewPassword.Value.Trim() == "")
            {
                script = "toastr.error(\"Please confirm the account new password!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newPassword.Value.Trim() != confirmNewPassword.Value.Trim())
            {
                script = "toastr.error(\"Confirm password is not correct!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            oldPassword.Value = "";
            newPassword.Value = "";
            confirmNewPassword.Value = "";

            script = "toastr.success(\"Account password updated successfully!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}