namespace FashionShop.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("qlbhthoitrang.hoadon")]
    public partial class hoadon
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public hoadon()
        {
            cthds = new HashSet<cthd>();
        }

        [Key]
        public int SOHD { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NGHD { get; set; }

        public int? MAKH { get; set; }

        public int? MANV { get; set; }

        public double? TRIGIA { get; set; }

        [Column(TypeName = "char")]
        [StringLength(10)]
        public string TINHTRANG { get; set; }

        public int? THANHTOAN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cthd> cthds { get; set; }

        public virtual khachhang khachhang { get; set; }

        public virtual nhanvien nhanvien { get; set; }
    }
}
