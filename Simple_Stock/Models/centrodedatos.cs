//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Simple_Stock.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class centrodedatos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public centrodedatos()
        {
            this.historial_centro = new HashSet<historial_centro>();
            this.historial_centro1 = new HashSet<historial_centro>();
        }
    
        public int id_centro { get; set; }
        public string nombre_centro { get; set; }
        public int stock_center { get; set; }
        public string planta_emergencia { get; set; }
        public string ups { get; set; }
        public string aire_acondicionado { get; set; }
        public string generalidades { get; set; }
        public int id_categoria { get; set; }
        public string url_image { get; set; }
    
        public virtual categorias categorias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial_centro> historial_centro { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial_centro> historial_centro1 { get; set; }
    }
}
