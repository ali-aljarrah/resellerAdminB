using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace resellerAdminB
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void password_reset_submit_Click(object sender, EventArgs e)
        {
            string script;
            string recaptchaResponse = Request.Form["g-recaptcha-response"];
            string secretKey = "6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe";
            bool isCaptchaValid = ValidateCaptcha(recaptchaResponse, secretKey);

            if (isCaptchaValid)
            {
                if (email.Value.Trim() == "")
                {
                    script = "showMessage('error', 'Please enter your email address')";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                script = "showMessage('success', 'Email sent successfully!')";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;

            }
            else
            {
                // Handle reCAPTCHA validation failure
                script = "showMessage('error', 'Oops! It seems like there are some issues with the login form you submitted. Please try again.')";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }
        }

        private bool ValidateCaptcha(string recaptchaResponse, string secretKey)
        {
            try
            {
                var request = WebRequest.Create($"https://www.google.com/recaptcha/api/siteverify?secret={secretKey}&response={recaptchaResponse}");
                using (WebResponse response = request.GetResponse())
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    JObject jResponse = JObject.Parse(stream.ReadToEnd());
                    return jResponse.Value<bool>("success");
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}