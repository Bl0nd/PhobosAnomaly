using Phobos.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phobos.Ul.Pages
{
    public partial class indexUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioBLL objUser = new UsuarioBLL();
            dgv1.DataSource = objUser.ListarUsuario(); //popular objeto
            dgv1.DataBind(); //imprimindo na tela

            FilmeBLL objFilme = new FilmeBLL();
            dgv1.DataSource = objFilme.ListarFilme();  //popular objeto
            dgv1.DataBind(); //imprimindo na tela
        }
    }
}