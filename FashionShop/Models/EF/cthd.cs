namespace FashionShop.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("qlbhthoitrang.cthd")]
    public partial class cthd
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int SOHD { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MASP { get; set; }

        public int? SL { get; set; }

        public int? MAKM { get; set; }

        public float? SOTIEN { get; set; }

        public virtual hoadon hoadon { get; set; }

        public virtual khuyenmai khuyenmai { get; set; }

        public virtual sanpham sanpham { get; set; }
    }
}
