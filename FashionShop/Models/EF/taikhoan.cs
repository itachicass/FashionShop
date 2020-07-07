namespace FashionShop.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("qlbhthoitrang.taikhoan")]
    public partial class taikhoan
    {
        [Key]
        [StringLength(20)]
        public string USERNAME { get; set; }

        [StringLength(20)]
        public string PASSWORD { get; set; }

        public int? LOAITK { get; set; }

        public int? MAKH { get; set; }

        public virtual khachhang khachhang { get; set; }
    }
}
