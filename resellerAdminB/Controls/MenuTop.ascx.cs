using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace resellerAdminB.Controls
{
    public partial class MenuTop : System.Web.UI.UserControl
    {
        public string parentPageText
        {
            get { return parentPage.InnerText; }
            set { parentPage.InnerText = value; }
        }

        public string childPageText
        {
            get { return childPage.InnerText; }
            set { childPage.InnerText = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}