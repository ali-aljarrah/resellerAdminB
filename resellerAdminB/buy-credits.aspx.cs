using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class buy_credits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reloadBtn_Click(object sender, EventArgs e)
        {
            string script;
            string ReloadOption = Request.Form["payment"];

            if (ReloadOption == null)
            {
                script = "toastr.error(\"Please select options to reload!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (ReloadOption.ToString() == "custom")
            {
                if (customPrice.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter your custom price!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }
            }

            script = "toastr.success(\"Thank you for your payment!\")";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;

        }
    }
}