using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class files_manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void upload_Click(object sender, EventArgs e)
        {
            string script;
            if (attach1.PostedFile != null && attach1.PostedFile.ContentLength > 0)
            {
                string fileExtension = Path.GetExtension(attach1.PostedFile.FileName).ToLower();
                string[] allowedExtensions = { ".txt", ".csv", ".xls", ".xlsx" };

                if (Array.IndexOf(allowedExtensions, fileExtension) == -1)
                {
                    script = "toastr.error(\"File format invalid\");";
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                    return;
                }

                script = "toastr.success(\"File uploaded Successfully!\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;

            }
            else
            {
                script = "toastr.error(\"No file selected\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }
        }
    }
}