//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityDBFirstMVCProject.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Lojistik
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Lojistik()
        {
            this.Siparislers = new HashSet<Siparisler>();
        }
    
        public int LojistikID { get; set; }
        public string LojistikFirmaAdi { get; set; }
        public string FirmaTel { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Siparisler> Siparislers { get; set; }
    }
}
