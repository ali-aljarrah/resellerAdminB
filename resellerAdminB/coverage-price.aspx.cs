﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB
{
    public partial class coverage_price : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string eventTarget = Request["__EVENTTARGET"];
                string eventArgument = Request["__EVENTARGUMENT"];

                if (!string.IsNullOrEmpty(eventTarget))
                {
                    if (eventTarget == "DeleteCountry")
                    {
                        // Handle the delete action
                        DeleteCountry(eventArgument);
                    }
                }
            }
        }

        private void DeleteCountry(string CountryID)
        {
            string script = $"toastr.success(\"Country: {CountryID} has been deleted!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }

        protected void AddNewCountryBtn_Click(object sender, EventArgs e)
        {
            string script;
            if (serviceOption.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select service option\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            bool isNumber = int.TryParse(costByCredit.Value.Trim(), out int result);

            if (costByCredit.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter cost by credits\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (!isNumber)
            {
                script = "toastr.error(\"Please enter a valid cost by credits\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (countryMCC.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select country MCC\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (mnc.Value.Trim() == "")
            {
                script = "toastr.error(\"Please enter MNC\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (available.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select availability\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            if (user.Value.Trim() == "")
            {
                script = "toastr.error(\"Please select users group\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
                return;
            }

            script = "toastr.success(\"Country has been added Successfully!\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", script, true);
            return;
        }
    }
}