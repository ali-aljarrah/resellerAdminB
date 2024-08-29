using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class sms_plans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddNewPlanBtn_Click(object sender, EventArgs e)
        {
            string script;

            bool isTotalSMSNumber = int.TryParse(totalSMS.Value.Trim(), out int resultTotalSMS);

            if (totalSMS.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter total SMS number\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (title.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter SMS plan title\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            bool isSMSRateNumber = int.TryParse(smsRate.Value.Trim(), out int resultSMSRate);

            if (smsRate.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter SMS rate\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            bool isTotalCostNumber = int.TryParse(totalCost.Value.Trim(), out int resultTotalCost);

            if (totalCost.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter total SMS plan cost\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (currency.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select SMS plan currency\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (status.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select SMS plan status\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"SMS plan has been added Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}