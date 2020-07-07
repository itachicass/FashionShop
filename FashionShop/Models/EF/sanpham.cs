namespace FashionShop.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("qlbhthoitrang.sanpham")]
    public partial class sanpham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public sanpham()
        {
            cthds = new HashSet<cthd>();
            phanhois = new HashSet<phanhoi>();
        }

        [Key]
        public int MASP { get; set; }

        [StringLength(40)]
        public string TENSP { get; set; }

        [StringLength(20)]
        public string LOAISP { get; set; }

        [Column(TypeName = "varchar")]
        [StringLength(255)]
        public string THUONGHIEU { get; set; }

        [StringLength(40)]
        public string NUOCSX { get; set; }

        [Column(TypeName = "char")]
        [StringLength(10)]
        public string KICHTHUOC { get; set; }

        [StringLength(255)]
        public string HINHANH { get; set; }

        public double GIA { get; set; }

        [Column(TypeName = "char")]
        [StringLength(3)]
        public string GIOITINH { get; set; }
     
        public int SOLUONG { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<cthd> cthds { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<phanhoi> phanhois { get; set; }
    }
}
