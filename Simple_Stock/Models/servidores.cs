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
    
    public partial class servidores
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public servidores()
        {
            this.historial_servidor = new HashSet<historial_servidor>();
            this.historial_servidor1 = new HashSet<historial_servidor>();
        }
    
        public int id_servidor { get; set; }
        public int num_inventario { get; set; }
        public string marca { get; set; }
        public string modelo { get; set; }
        public string num_serie { get; set; }
        public string tipo_servidor { get; set; }
        public string nom_servidor { get; set; }
        public string ip_servidor { get; set; }
        public int num_procesadores { get; set; }
        public string tipo_procesador { get; set; }
        public string vel_procesador { get; set; }
        public int nivel_arreglo_discos { get; set; }
        public int capacidad_almto { get; set; }
        public int mem_ram { get; set; }
        public string sist_operativos { get; set; }
        public string aplic_principales { get; set; }
        public string cuenta_disp { get; set; }
        public string interconectado_disp { get; set; }
        public string esquema_virtual { get; set; }
        public string observaciones { get; set; }
        public int id_categoria { get; set; }
        public string url_image { get; set; }
    
        public virtual categorias categorias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial_servidor> historial_servidor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<historial_servidor> historial_servidor1 { get; set; }
    }
}
