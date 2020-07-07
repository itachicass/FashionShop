using FashionShop.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FashionShop.Models.Dao
{
    public class SaleDao
    {
        QlbhDbContext qlbhContext = null;

        public SaleDao()
        {
            qlbhContext = new QlbhDbContext();
        }
        public int phantramKM(int makm)
        {
            List<khuyenmai> list = new List<khuyenmai>();
            list = (from km in qlbhContext.khuyenmais
                    where km.MAKM == makm
                    select km).ToList();
            int phantramkm= list[0].PHANTRAMKM;
            return phantramkm = list[0].PHANTRAMKM;
            ;
        }
    }
}