using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class edit_gateway : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EditGatewayBtn_Click(object sender, EventArgs e)
        {
            string script;

            if (editGatewayType.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select gateway type!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (editGatewayName.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter the display name!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            bool isMinOrderNumber = int.TryParse(editGatewayMinimumOrder.Value.Trim(), out int resultMinOrder);

            if (editGatewayMinimumOrder.Value.Length < 0 || !isMinOrderNumber)
            {
                script = "toastr.error(\"Please enter a valid gateway minimum order!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (editGatewayFeeType.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select gateway fee type!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            bool isFeeAmountNumber = int.TryParse(editGatewayFeeAmount.Value.Trim(), out int resultFeeAmount);

            if (editGatewayFeeAmount.Value.Length < 0 || !isFeeAmountNumber)
            {
                script = "toastr.error(\"Please enter a valid gateway fee amount!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            bool isNoticeNumber = int.TryParse(editGatewaynotice.Value.Trim(), out int resultNotice);

            if (editGatewaynotice.Value.Length < 0 || !isNoticeNumber)
            {
                script = "toastr.error(\"Please enter a valid gateway notice!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Gateway updated successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}