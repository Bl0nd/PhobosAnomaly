using Phobos.BLL;
using Phobos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phobos.Ul.Pages
{
    public partial class IndexAdminFilme : System.Web.UI.Page
    {
        //instanciando objetos Filme
        FilmeDTO objModeloFilme = new FilmeDTO();
        FilmeBLL objBLLFilme = new FilmeBLL();

        //metodo PopularGVFilme
        public void PopularGVFilme()
        {
            dgv2.DataSource = objBLLFilme.ListarFilmeAdmin();
            dgv2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopularGVFilme();
                lblMessage.Text = string.Empty;
            }

            //iniciando session
            if (Session["Usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void dgv2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
            {
                objModeloFilme.Titulo = (dgv2.FooterRow.FindControl("txtTituloFilmeFooter") as TextBox).Text.Trim();
                objModeloFilme.Genero = (dgv2.FooterRow.FindControl("txtGeneroFilmeFooter") as TextBox).Text.Trim();
                objModeloFilme.Produtora = (dgv2.FooterRow.FindControl("txtProdutoraFilmeFooter") as TextBox).Text.Trim();

                //saving image
                if ((dgv2.FooterRow.FindControl("fUp1") as FileUpload).HasFile)
                {
                    var str = (dgv2.FooterRow.FindControl("fUp1") as FileUpload).FileName.Trim();
                    (dgv2.FooterRow.FindControl("fUp1") as FileUpload).PostedFile.SaveAs(Server.MapPath("~/img" + "/" + str));
                    string CaminhoImg = "~/img" + "/" + str.ToString();
                    objModeloFilme.UrlImagem = CaminhoImg;
                }

                objModeloFilme.Classificacao = (dgv2.FooterRow.FindControl("rbl1") as RadioButtonList).Text.Trim();

                objBLLFilme.CadastrarFilme(objModeloFilme);
                PopularGVFilme();
                (dgv2.FooterRow.FindControl("txtTituloFilmeFooter") as TextBox).Focus();
                lblMessage.Text = "O Filme " + objModeloFilme.Titulo + " cadastrado com sucesso !!";
            }
        }

        protected void dgv2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgv2.EditIndex = e.NewEditIndex;
            PopularGVFilme();
        }

        protected void dgv2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv2.EditIndex = -1;
            PopularGVFilme();
        }

        protected void dgv2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objModeloFilme.Titulo = (dgv2.Rows[e.RowIndex].FindControl("txtTituloFilme") as TextBox).Text.Trim();

            objModeloFilme.Genero = (dgv2.Rows[e.RowIndex].FindControl("txtGeneroFilme") as TextBox).Text.Trim();

            objModeloFilme.Produtora = (dgv2.Rows[e.RowIndex].FindControl("txtProdutoraFilme") as TextBox).Text.Trim();

            //saving image
            if ((dgv2.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).HasFile)
            {
                var str = (dgv2.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).FileName.Trim();
                (dgv2.Rows[e.RowIndex].FindControl("fUp1") as FileUpload).PostedFile.SaveAs(Server.MapPath("~/img" + "/" + str));
                string CaminhoImagem = "~/img" + "/" + str.ToString();
                objModeloFilme.UrlImagem = CaminhoImagem;
            }


            objModeloFilme.Classificacao = (dgv2.Rows[e.RowIndex].FindControl("rbl1") as RadioButtonList).Text.Trim();

            objModeloFilme.Id = Convert.ToInt32(dgv2.DataKeys[e.RowIndex].Value.ToString());

            objBLLFilme.EditFilme(objModeloFilme);
            dgv2.EditIndex = -1;

            PopularGVFilme();

            lblMessage.Text = "Filme " + objModeloFilme.Titulo + " editado com sucesso !!";
        }

        protected void dgv2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objModeloFilme.Id = Convert.ToInt32(dgv2.DataKeys[e.RowIndex].Value.ToString());
            objBLLFilme.DeleteFilme(objModeloFilme.Id);
            PopularGVFilme();
            (dgv2.FooterRow.FindControl("txtTituloFilmeFooter") as TextBox).Focus();

            lblMessage.Text = "O Filme " + objModeloFilme.Titulo + " foi eliminado com sucesso!!";
        }
    }
}