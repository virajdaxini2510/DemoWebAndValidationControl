using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWebAndValidationControl
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvSkill_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (lstSkills.GetSelectedIndices().Length > 0);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["Name"] = txtName.Text;
                Session["Department"] = ddlDepartment.SelectedValue;

                Response.Redirect("Success.aspx");
            }
        }

        protected void lnkClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtAge.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirm.Text = "";

            ddlDepartment.SelectedIndex = 0;

            rbMale.Checked = false;
            rbFemale.Checked = false;

            chkAccept.Checked = false;

            foreach (ListItem item in lstSkills.Items)
                item.Selected = false;

            phMessage.Controls.Clear();

            Literal l = new Literal();
            l.Text = "<b>Form Cleared Successfully.</b>";

            phMessage.Controls.Add(l);
        }
    }
}