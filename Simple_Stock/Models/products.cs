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
    
    public partial class products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public products()
        {
            this.historial = new HashSet<historial>();
            this.historial1 = new HashSet<historial>();
        }
    
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
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial> historial { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial> historial1 { get; set; }
    }
}
