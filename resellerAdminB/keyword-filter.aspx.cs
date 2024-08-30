using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class keyword_filter : System.Web.UI.Page
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
        private void DeleteFilter(string KeywordFilterID)
        {
            string script = $"toastr.success(\"Filter: {KeywordFilterID} has been deleted!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void AddNewSpamFilterBtn_Click(object sender, EventArgs e)
        {
            string script;
            if (spamWord.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter spam keyword\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (spamStatus.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select spam keyword status\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (customUser.Checked)
            {
                if (filterSpamWordUsername.Value.Trim() == "")
                {
                    script = "toastr.error(\"Please enter custom username\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }
            }

            spamWord.Value = "";
            filterSpamWordUsername.Value = "";

            script = "toastr.success(\"Filter spam keyword has been added Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}