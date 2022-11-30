using Phobos.DAL;
using Phobos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.BLL
{
    public class FilmeBLL
    {
        //objeto global
        FilmeDAL objBLL = new FilmeDAL();
 
        //Create
        public void CadastrarFilme(FilmeDTO objCadUser)
        {
            objBLL.Cadastrar(objCadUser);
        }

        //Read
        public List<FilmeListDTO> ListarFilme()
        {
            return objBLL.Listar();
        }

        //Update
        public void EditFilme(FilmeDTO objEdit)
        {
            objBLL.Editar(objEdit);
        }

        //Delete
        public void DeleteFilme(int objDelete)
        {
            objBLL.Excluir(objDelete);
        }

        //SelectById
        public FilmeDTO SelectFilmePorId(int objModelo)
        {
            return objBLL.BuscaPorId(objModelo);
        }

        //Listar Admin
        public List<FilmeDTO> ListarFilmeAdmin()
        {
            return objBLL.ListarAdmin();
        }
    }
}
