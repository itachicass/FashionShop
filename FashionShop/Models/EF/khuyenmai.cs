namespace FashionShop.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("qlbhthoitrang.khuyenmai")]
    public partial class khuyenmai
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public khuyenmai()
        {
            cthds = new HashSet<cthd>();
        }

        [Key]
        public int MAKM { get; set; }

        public int PHANTRAMKM { get; set; }

        [Column(TypeName = "date")]
        public DateTime? TGBD { get; set; }

        [Column(TypeName = "date")]
        public DateTime? TGKT { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cthd> cthds { get; set; }
    }
}
