using MySql.Data.MySqlClient;//
using Phobos.DTO;//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.DAL
{
    public class UsuarioDAL : Conexao
    {
        //Crud

        //Create
        public void Cadastrar(UsuarioDTO objCad)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("INSERT INTO Usuario (Nome,Email,Senha,DataNascUsuario,UsuarioTp)" +
                    "VALUES (@Nome,@Email,@Senha,@DataNascUsuario,@UsuarioTp)", conn);
                cmd.Parameters.AddWithValue("@Nome", objCad.Nome);
                cmd.Parameters.AddWithValue("@Email", objCad.Email);
                cmd.Parameters.AddWithValue("@Senha", objCad.Senha);
                cmd.Parameters.AddWithValue("@DataNascUsuario", objCad.DataNascUsuario);
                cmd.Parameters.AddWithValue("@UsuarioTp", objCad.UsuarioTp);
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

        //Read
        public List<UsuarioListDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT Nome,Email,Descricao FROM Usuario INNER JOIN tipousuario ON usuario.usuarioTp = usuarioTp", conn);
                dr = cmd.ExecuteReader();
                //ponteiro - lista vazia
                List<UsuarioListDTO> lista = new List<UsuarioListDTO>();
                while (dr.Read())
                {
                    UsuarioListDTO obj = new UsuarioListDTO();
                    obj.Nome = dr["nome"].ToString();
                    obj.Email = dr["email"].ToString();
                    obj.Descricao = dr["descricao"].ToString();

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
        public void Editar(UsuarioDTO objEdit)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("UPDATE Usuario Set Nome = @Nome,Email = @Email, Senha = @Senha,DataNascUsuario = DataNascUsuario, UsuarioTp = @UsuarioTp WHERE Id = @Id", conn);
                cmd.Parameters.AddWithValue("@Nome", objEdit.Nome);
                cmd.Parameters.AddWithValue("@Email", objEdit.Email);
                cmd.Parameters.AddWithValue("@Senha", objEdit.Senha);
                cmd.Parameters.AddWithValue("@DataNascUsuario", objEdit.DataNascUsuario);
                cmd.Parameters.AddWithValue("@UsuarioTp", objEdit.UsuarioTp);
                cmd.Parameters.AddWithValue("@Id", objEdit.Id);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao editar usuario !!" + ex.Message);
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
                cmd = new MySqlCommand("DELETE FROM Usuario WHERE Id = @Id", conn);
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




        //Autenticar
        public UsuarioAtenticaDTO Autenticar(string objNome, string objSenha)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT nome,senha,usuarioTp FROM usuario WHERE nome = @nome AND senha = @senha;", conn);
                cmd.Parameters.AddWithValue("@Nome", objNome);
                cmd.Parameters.AddWithValue("@Senha", objSenha);
                dr = cmd.ExecuteReader();
                UsuarioAtenticaDTO obj = null;
                if (dr.Read())
                {
                    obj = new UsuarioAtenticaDTO();
                    obj.Nome = dr["Nome"].ToString();
                    obj.Senha = dr["Senha"].ToString();
                    obj.UsuarioTp = Convert.ToInt32(dr["UsuarioTp"]);
                }
                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Usuário não cadastrado !!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //BuscarPorId
        public UsuarioDTO BuscaPorId(int Id)
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT * FROM Usuario WHERE idUsuario = idUsuario", conn);
                cmd.Parameters.AddWithValue("@Id", Id);
                dr = cmd.ExecuteReader();
                UsuarioDTO obj = null;
                if (dr.Read())
                {
                    obj = new UsuarioDTO();
                    obj.Id = Convert.ToInt32(dr["id"]);
                    obj.Nome = dr["Nome"].ToString();
                    obj.Email = dr["Email"].ToString();
                    obj.Senha = dr["Senha"].ToString();
                    obj.DataNascUsuario = dr["DataNascUsuario"].ToString();
                    obj.UsuarioTp = dr["UsuarioTp"].ToString();
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

        //Listar Admin

        public List<UsuarioDTO> ListarAdmin()
        {
            try
            {
                Conectar();
                cmd = new MySqlCommand("SELECT Usuario.Id,Nome,Email,Senha,DataNascUsuario,Descricao FROM Usuario INNER JOIN tipousuario ON usuario.usuarioTp = usuarioTp", conn);
                dr = cmd.ExecuteReader();
                //ponteiro - lista vazia
                List<UsuarioDTO> lista = new List<UsuarioDTO>();
                while (dr.Read())
                {
                    UsuarioDTO obj = new UsuarioDTO();
                    obj.Id = Convert.ToInt32(dr["Id"]);
                    obj.Nome = dr["Nome"].ToString();
                    obj.Email = dr["Email"].ToString();
                    obj.Senha = dr["Senha"].ToString();
                    obj.DataNascUsuario = Convert.ToDateTime(dr["DataNascUsuario"]).ToString("dd/MM/yyyy");
                    obj.UsuarioTp = dr["Descricao"].ToString();

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


    }
}
