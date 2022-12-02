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
            dgv2.DataSource = objFilme.ListarFilme();  //popular objeto
            dgv2.DataBind(); //imprimindo na tela
        }

        //messageBox com JS
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        //validacao User
        private bool ValidaPage()
        {
            bool PageValido;

            if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).Text.Trim()))
            {
                //(dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).BackColor= Color.Red;
                MsgBox("Digite o nome!", Page, this);
                //(dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).BackColor = Color.White;
                (dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }

            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtEmailUsuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite o email!", this.Page, this);
                (dgv1.FooterRow.FindControl("txtEmailUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtSenhaUsuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite a senha!", this.Page, this);
                (dgv1.FooterRow.FindControl("txtSenhaUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtDataNascUsuarioFooter") as TextBox).Text.Trim()) || (dgv1.FooterRow.FindControl("txtDataNascUsuarioFooter") as TextBox).Text.Trim().Length < 10)
            {
                MsgBox("Digita a data!", this.Page, this);
                (dgv1.FooterRow.FindControl("txtDataNascUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if ((dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).SelectedIndex < 0)
            {
                MsgBox("Escolha uma das opções!", this.Page, this);
                (dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).Focus();
                PageValido = false;

            }
            else
            {
                PageValido = true;
            }
            return PageValido;

        }
    }
}