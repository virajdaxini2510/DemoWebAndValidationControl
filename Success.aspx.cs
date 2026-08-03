using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebAndValidationControl
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            litMessage.Text =
                    "Welcome <b>" +
                    Session["Name"] +
                    "</b><br/>Department : " +
                    Session["Department"];
        }
    }
}