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
    
    public partial class enlaces
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public enlaces()
        {
            this.historial_enlace = new HashSet<historial_enlace>();
            this.historial_enlace1 = new HashSet<historial_enlace>();
        }
    
        public int id_enlaces { get; set; }
        public string nombre_enlace { get; set; }
        public int num_inventario { get; set; }
        public string marca { get; set; }
        public string modelo { get; set; }
        public string num_serie { get; set; }
        public int ancho_banda { get; set; }
        public int frecuencia { get; set; }
        public string observaciones { get; set; }
        public int id_categoria { get; set; }
        public string url_image { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial_enlace> historial_enlace { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial_enlace> historial_enlace1 { get; set; }
    }
}