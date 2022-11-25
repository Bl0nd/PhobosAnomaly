using MySql.Data.MySqlClient;
using Phobos.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.DAL
{
    public class FilmeDAL : Conexao
    {
        //Crud

        //Create
        public void Cadastrar(FilmeDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("INSERT INTO Filme (Titulo,Genero,Produtora,UrlImagem)" +
                    "VALUES (@Titulo,@Genero,@Produtora,@UrlImagem)", conn);
                cmd.Parameters.AddWithValue("@Titulo", objCad.Titulo);
                cmd.Parameters.AddWithValue("@Genero", objCad.Genero);
                cmd.Parameters.AddWithValue("@Produtora", objCad.Produtora);
                cmd.Parameters.AddWithValue("@UrlImagem", objCad.UrlImagem);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao cadastrar !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //READ
        public List<FilmeListDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT Titulo,Genero,Produtora,UrlImagem,Descricao FROM filme INNER JOIN classificacao ON filme.idClassificao = classificacao.idClassificacao", conn);
                dr = cmd.ExecuteReader();
                //ponteiro - lista vazia
                List<FilmeListDTO> lista = new List<FilmeListDTO>();
                while (dr.Read())
                {
                    FilmeListDTO obj = new FilmeListDTO();
                    obj.Titulo = dr["Titulo"].ToString();
                    obj.Genero = dr["Genero"].ToString();
                    obj.Produtora = dr["Produtora"].ToString();
                    obj.UrlImagem = dr["UrlImagem"].ToString();
                    obj.Descricao = dr["Descricao"].ToString();

                    //adicionar a lista
                    lista.Add(obj);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar registros !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }



        //Update
        public void Editar(FilmeDTO objEdit)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("UPDATE Filme Set Titulo=@Titulo,Genero=@Genero, Produtora=@Produtora,UrlImagem=@UrlImagem,idClassificacao=@idClassificacao WHERE idFilme=@idFilme", conn);
                cmd.Parameters.AddWithValue("@Titulo", objEdit.Titulo);
                cmd.Parameters.AddWithValue("@Genero", objEdit.Genero);
                cmd.Parameters.AddWithValue("@Produtora", objEdit.Produtora);
                cmd.Parameters.AddWithValue("@UrlImagem", objEdit.UrlImagem);
                cmd.Parameters.AddWithValue("@idClassificacao", objEdit.Id);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao editar filme !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Delete
        public void Excluir(int objDel)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("DELETE FROM Filme WHERE IdUsuario = @IdUsuario", conn);
                cmd.Parameters.AddWithValue("@Id", objDel);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao eliminar registro" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //BuscarPorId
        public FilmeDTO BuscaPorId(int Id)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT * FROM Filme WHERE IdFilme = @IdFilme", conn);
                cmd.Parameters.AddWithValue("@Id", Id);
                dr = cmd.ExecuteReader();
                FilmeDTO obj = null;
                if (dr.Read())
                {
                    obj = new FilmeDTO();
                    obj.Id = Convert.ToInt32(dr["id"]);
                    obj.Titulo = dr["Titulo"].ToString();
                    obj.Genero = dr["Genero"].ToString();
                    obj.Produtora = dr["Produtora"].ToString();
                    obj.UrlImagem = dr["UrlImagem"].ToString();
                    obj.idClassificao = Convert.ToInt32(dr["idClassificao"]);
                }
                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao buscar registro !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

    }

    

}

