using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class sender_id_filter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string eventTarget = Request["__EVENTTARGET"];
                string eventArgument = Request["__EVENTARGUMENT"];

                if (!string.IsNullOrEmpty(eventTarget))
                {
                    if (eventTarget == "DeleteFilter")
                    {
                        // Handle the delete action
                        DeleteFilter(eventArgument);
                    }
                }
            }
        }

        private void DeleteFilter(string SenderFilterID)
        {
            string script = $"toastr.success(\"Filter: {SenderFilterID} has been deleted!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void AddNewSenderFilterBtn_Click(object sender, EventArgs e)
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

            if(customUser.Checked) {
                if (filterSenderName.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter custom username\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }
            }

            senderName.Value = "";
            filterSenderName.Value = "";

            script = "toastr.success(\"Filter Sender name has been added Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}