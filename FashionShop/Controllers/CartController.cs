using FashionShop.Models;
using FashionShop.Models.Dao;
using FashionShop.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FashionShop.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        public ActionResult Index()
        {
            List<CartItem> giohang = Session["giohang"] as List<CartItem>;
            return View();
        }
        

        public RedirectToRouteResult ThemVaoGio(int masp,int km, string kt)
        {
            if (Session["giohang"] == null)
            {
                Session["giohang"] = new List<CartItem>();
            }
            List<CartItem> giohang = Session["giohang"] as List<CartItem>;
            if (giohang.FirstOrDefault(m=>m.MASP == masp) == null)
            {
                ProductDao dao = new ProductDao();
                sanpham sp = dao.GetItemByID(masp).FirstOrDefault();
                CartItem newItem = new CartItem();
                {
                    newItem.MASP = masp;
                    newItem.TENSP = sp.TENSP;
                    newItem.HINHANH = sp.HINHANH;
                    newItem.SoLuong = 1;
                    newItem.MAKM = km;
                    newItem.GIA = sp.GIA;
                    newItem.KichThuoc = kt;
                }
                giohang.Add(newItem);
            }
            else
            {
                CartItem cardItem = giohang.FirstOrDefault(m => m.MASP == masp);
                cardItem.SoLuong++;
            }
            return RedirectToAction("Product_Detail", "Product", new { id = masp });
        }
        
        public RedirectToRouteResult XoaKhoiGio(int SanPhamID)
        {
            List<CartItem> giohang = Session["giohang"] as List<CartItem>;
            CartItem itemXoa = giohang.FirstOrDefault(m => m.MASP == SanPhamID);
            if (itemXoa != null)
            {
                giohang.Remove(itemXoa);
            }
            return RedirectToAction("Index");
        }
    }
}