namespace FashionShop.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("qlbhthoitrang.phanhoi")]
    public partial class phanhoi
    {
        [Key]
        public int MAPH { get; set; }

        public int? MAKH { get; set; }

        public int? MASP { get; set; }

        [Column(TypeName = "date")]
        public DateTime? THOIGIANPH { get; set; }

        [Column(TypeName = "char")]
        [StringLength(255)]
        public string NOIDUNG { get; set; }

        public virtual khachhang khachhang { get; set; }

        public virtual sanpham sanpham { get; set; }
    }
}
