using System;

namespace Phobos.DTO
{
    public class UsuarioDTO
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }
        public string DataNascUsuario { get; set; }
        public string UsuarioTp { get; set; }
    }
}
