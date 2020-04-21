using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Simple_Stock.cModels
{
    public class cCategorias
    {
        public int id_categoria { get; set; }
        public string nombre_categoria { get; set; }
        public string descripcion_categoria { get; set; }
        public System.DateTime date_added { get; set; }
    }
}