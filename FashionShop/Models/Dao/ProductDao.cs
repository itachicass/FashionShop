using FashionShop.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FashionShop.Models.Dao
{
    public class ProductDao
    {
        QlbhDbContext qlbhContext = null;

        public ProductDao()
        {
            qlbhContext = new QlbhDbContext();
        }

        public List<sanpham> GetSanphamAll()
        {
            var query = from sp in qlbhContext.sanphams
                        select sp;
            return query.ToList();
        }
        public List<sanpham> Search(string text)
        {
            var query = from sp in qlbhContext.sanphams
                        select sp; ;
            if (!String.IsNullOrEmpty(text))
               query = from sp in qlbhContext.sanphams
                        where sp.TENSP == text || sp.LOAISP == text
                        select sp;
            
            return query.ToList();

        }
        public List<sanpham> GetItemByGender(string gender)
        {
            var query = from sp in qlbhContext.sanphams
                        where sp.GIOITINH == gender
                        select sp;
            return query.ToList();
        }
        public List<sanpham> GetItemByGenderAndType(string gender, string type)
        {
            var query = from sp in qlbhContext.sanphams
                        where sp.GIOITINH == gender && sp.LOAISP == type
                        select sp;
            return query.ToList();
        }

        public List<sanpham> GetItemByType(string type)
        {
            var query = from sp in qlbhContext.sanphams
                        where sp.LOAISP == type
                        select sp;
            return query.ToList();
        }
        public List<sanpham> BestSeller()
        {
            var query = (from sp in qlbhContext.sanphams                                              
                         orderby sp.cthds.Count() descending
                         select sp).Take(9);
            return query.ToList();
        }
        public List<sanpham> NewProduct()
        {
            var query = (from sp in qlbhContext.sanphams
                         orderby sp.MASP descending
                         select sp).Take(9);
            return query.ToList();
        }
        public List<sanpham> GetItemByID(int ID)
        {
            var query = from sp in qlbhContext.sanphams
                        where sp.MASP == ID
                        select sp;
            return query.ToList();
        }
        public double GetPrice(int masp)
        {
            List<sanpham> item = (from sp in qlbhContext.sanphams
                       where sp.MASP == masp
                       select sp).ToList();
            double gia = item[0].GIA;
            return gia;
        }
    }
}