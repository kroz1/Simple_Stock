using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Simple_Stock.cModels
{
    public class cPerifericos
    {
        public int id_producto { get; set; }
        public string codigo_producto { get; set; }
        public string nombre_producto { get; set; }
        public string asignado { get; set; }
        public int stock { get; set; }
        public string marca { get; set; }
        public string modelo { get; set; }
        public string serie { get; set; }
        public string tipo { get; set; }
        public string ubicacion { get; set; }
        public string estado { get; set; }
        public System.DateTime date_added { get; set; }
        public string observaciones { get; set; }
        public int id_categoria { get; set; }
        public string url_image { get; set; }
    }
}