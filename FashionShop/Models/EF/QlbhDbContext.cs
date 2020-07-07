namespace FashionShop.Models.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class QlbhDbContext : DbContext
    {
        public QlbhDbContext()
            : base("name=QlbhDbContext")
        {
        }

        public virtual DbSet<cthd> cthds { get; set; }
        public virtual DbSet<hoadon> hoadons { get; set; }
        public virtual DbSet<khachhang> khachhangs { get; set; }
        public virtual DbSet<khuyenmai> khuyenmais { get; set; }
        public virtual DbSet<nhanvien> nhanviens { get; set; }
        public virtual DbSet<phanhoi> phanhois { get; set; }
        public virtual DbSet<sanpham> sanphams { get; set; }
        public virtual DbSet<taikhoan> taikhoans { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<hoadon>()
                .Property(e => e.TINHTRANG)
                .IsUnicode(false);

            modelBuilder.Entity<hoadon>()
                .HasMany(e => e.cthds)
                .WithRequired(e => e.hoadon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<khachhang>()
                .Property(e => e.HOTEN)
                .IsUnicode(false);

            modelBuilder.Entity<khachhang>()
                .Property(e => e.DCHI)
                .IsUnicode(false);

            modelBuilder.Entity<khachhang>()
                .Property(e => e.SODT)
                .IsUnicode(false);

            modelBuilder.Entity<nhanvien>()
                .Property(e => e.HOTEN)
                .IsUnicode(false);

            modelBuilder.Entity<nhanvien>()
                .Property(e => e.SODT)
                .IsUnicode(false);

            modelBuilder.Entity<phanhoi>()
                .Property(e => e.NOIDUNG)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.TENSP)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.LOAISP)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.NUOCSX)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.KICHTHUOC)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.HINHANH)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .Property(e => e.GIOITINH)
                .IsUnicode(false);

            modelBuilder.Entity<sanpham>()
                .HasMany(e => e.cthds)
                .WithRequired(e => e.sanpham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<taikhoan>()
                .Property(e => e.USERNAME)
                .IsUnicode(false);

            modelBuilder.Entity<taikhoan>()
                .Property(e => e.PASSWORD)
                .IsUnicode(false);
        }
    }
}
