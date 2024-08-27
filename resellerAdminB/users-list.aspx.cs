using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class user_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void addNewUserSubmitBtn_Click(object sender, EventArgs e)
        {

            string script;
            var reg = new Regex(@"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
            var regPhone = new Regex(@"^\+?[0-9]{8,15}$");

            if (newUserFullName.Value.Trim() == "")
            {
                script = "toastr.error(\"Please add the user full name\"); showUserModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newUserEmail.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter the user email!\"); showUserModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!reg.IsMatch(newUserEmail.Value))
            {
                script = "toastr.error(\"Please Enter a Valid Email Address in user email input\"); showUserModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newUserPhoneNumber.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter the user phone number!\"); showUserModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!regPhone.IsMatch(newUserPhoneNumber.Value))
            {
                script = "toastr.error(\"Please enter a valid internation phone number\"); showUserModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (newUserCountry.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter the user country!\"); showUserModal();";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"User has been added Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}