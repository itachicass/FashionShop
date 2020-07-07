namespace FashionShop.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("qlbhthoitrang.khachhang")]
    public partial class khachhang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public khachhang()
        {
            hoadons = new HashSet<hoadon>();
            phanhois = new HashSet<phanhoi>();
            taikhoans = new HashSet<taikhoan>();
        }

        [Key]
        public int MAKH { get; set; }

        [StringLength(40)]
        public string HOTEN { get; set; }

        [StringLength(50)]
        public string DCHI { get; set; }

        [StringLength(20)]
        public string SODT { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NGSINH { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NGDK { get; set; }

        public double? DOANHSO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<hoadon> hoadons { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<phanhoi> phanhois { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<taikhoan> taikhoans { get; set; }
    }
}
