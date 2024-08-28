using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class general_settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string eventTarget = Request["__EVENTTARGET"];
                string eventArgument = Request["__EVENTARGUMENT"];

                if (!string.IsNullOrEmpty(eventTarget))
                {
                    if (eventTarget == "DeleteGateWay")
                    {
                        // Handle the delete action
                        DeleteGateWay(eventArgument);
                    }
                }
            }
        }

        private void DeleteGateWay(string GatewayID)
        {
            string script = $"toastr.success(\"Gateway: {GatewayID} has been deleted!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }


        protected void editBusinissSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;
            var reg = new Regex(@"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");

            if (businessName.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your business name\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (supportEmail.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your support email\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!reg.IsMatch(supportEmail.Value))
            {
                script = "toastr.error(\"Please Enter a Valid Email Address in support email input\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (defaultSenderID.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your default sender ID\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (businessAddress.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your business address\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (businessWebsite.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your business website\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (resellerDomain.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your reseller domain\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Business details has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void otherSettingsSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;

            if (billingModel.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter your billing mode\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (hideRegistrationForm.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter registarion form option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (enableEmailVerification.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter enable email verification option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (enablePhoneVerification.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter enable phone verification option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (disableFundingByCreditPurchases.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter disable funding by credit purchases option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (sendCustomersToWebsiteAfterLogout.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter send customer to website after logout option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (invoiceTax.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter invoice tax\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (invoiceVat.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter invoice vat\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Other settings has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void outgoingEmailSettingsSubmitBtn_Click(object sender, EventArgs e)
        {
            string script;
            if (
                smtpServer.Value.Trim() != "" || smtpUsername.Value.Trim() != "" ||
                smtpPassword.Value.Trim() != "" || smtpPort.Value.Trim() != ""
                )
            {
                if (smtpServer.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter SMTP server\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                if (smtpUsername.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter SMTP username\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                if (smtpPassword.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter SMTP password\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                if (smtpPort.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter SMTP port\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                if (smtpSecurity.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter SMTP security option\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                script = "toastr.success(\"SMTP has been enabled Successfully!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"SMTP has been disabled Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void newGatewaySubmitBtn_Click(object sender, EventArgs e)
        {
            string script;

            if (newGatewayType.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter gateway type\"); openGatewayTabAndModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newGatewayName.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter gateway name\"); openGatewayTabAndModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newGatewayMinimumOrder.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter gateway minimum order\"); openGatewayTabAndModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newGatewayFeeType.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter gateway fee type\"); openGatewayTabAndModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newGatewayFeeAmount.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter gateway fee amount\"); openGatewayTabAndModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newGatewaynotice.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter gateway notice\"); openGatewayTabAndModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (EnableNewGateway.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter enable option\"); openGatewayTabAndModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Gateway has been added Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}