using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class show_hide_pages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string eventTarget = Request["__EVENTTARGET"];
                string eventArgument = Request["__EVENTARGUMENT"];

                if (!string.IsNullOrEmpty(eventTarget))
                {
                    if (eventTarget == "DeletePage")
                    {
                        // Handle the delete action
                        DeletePage(eventArgument);
                    }
                }
            }
        }

        private void DeletePage(string PageID)
        {
            string script = $"toastr.success(\"Page: {PageID} has been deleted!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void HideShowPageBtn_Click(object sender, EventArgs e)
        {
            string script;
            if (userPage.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select users group\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (choosePage.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select page\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (action.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select action to take\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Page has been updated Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}