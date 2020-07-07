using FashionShop.Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FashionShop.Models
{
    public class CartItem
    {
        int masp;
        string tensp;
        string hinhanh;
        int soluong;
        int makm;
        double gia;
        string kichthuoc;
        double thanhtien;
        public int MASP{get;set;}
        public string TENSP { get; set; }
        public string HINHANH { get; set; }
        public int SoLuong { get; set; }
        public int MAKM { get; set; }
        public double GIA { get; set; }
        public string KichThuoc { get; set; }
        public double ThanhTien { get;}
        public CartItem()
        {

        }
        public CartItem(int masp,string tensp, string hinhanh, int soluong, int makm,double gia, string kichthuoc)
        {

            this.MASP = masp;
            TENSP = tensp;
            HINHANH = hinhanh;
            this.SoLuong = soluong;
            this.MAKM = makm;
            GIA = gia;
            this.KichThuoc = kichthuoc;
            ThanhTien = Tinhthanhtien();
        }
        private double Tinhthanhtien()
        {
            
            SaleDao sdao = new SaleDao();
            
            int km = sdao.phantramKM(makm);
            return soluong * gia * km / 100.0;
        }
        
    }
}