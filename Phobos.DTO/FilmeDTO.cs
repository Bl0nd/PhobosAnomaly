﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phobos.DTO
{
    public class FilmeDTO
    {
        public int Id { get; set; }
        public string Titulo { get; set; }
        public string Genero { get; set; }
        public string Produtora { get; set; }
        public string UrlImagem { get; set; }
        public string Classificacao { get; set; }
        public string Descricao { get; set; }
    }
}
