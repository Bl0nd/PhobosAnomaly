using System;

namespace Phobos.Ul
{
    public partial class DefaultUser : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("../login.aspx");
            }
            lblMessage.Text = "Bem-vindo " + Session["Usuario"] + " a Phobos !!";
        }
    }
}