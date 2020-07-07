using FashionShop.Models.Dao;
using FashionShop.Models.EF;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FashionShop.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            ProductDao productDao = new ProductDao();
            ViewData["listProduct"] = productDao.GetSanphamAll();
            return View();
        }
        [HttpGet]
        public ActionResult ProductByGender(string gender)
        {
            ProductDao productDao = new ProductDao();
            ViewData["listProduct"] = productDao.GetItemByGender(gender);
            return View();
        }
        [HttpGet]
        public ActionResult ProductByGenderAndType(string gender)
        {
            ProductDao productDao = new ProductDao();
            ViewData["listProduct"] = productDao.GetItemByGender(gender);
            return View();
        }
        [HttpGet]
        public ActionResult Product_Detail (int ID)
        {
            ProductDao productDao = new ProductDao();           
            ViewData["listProduct"] = productDao.GetItemByID(ID);
            return View();
        }
        [HttpGet]
        public ActionResult ProductByType(string type)
        {
            ProductDao productDao = new ProductDao();
            ViewData["listProduct"] = productDao.GetItemByType(type);
            return View();
        }
        [HttpGet]
        public JsonResult Search(string text, int? page)
        {
            ProductDao productDao = new ProductDao();
            List<Models.EF.sanpham> list = productDao.Search(text);
            if (page < 1)
                page = 1;
            int start = (int)(page - 1) * 6;
            ViewBag.pageCurrent = page;
            int totalPage = list.Count;
            float totalNumsize = (totalPage / (float)6);
            int numSize = (int)Math.Ceiling(totalNumsize);
            ViewBag.numSize = numSize;
            return Json(new { data = list.OrderByDescending(x => x.TENSP).Skip(start).Take(6), pageCurrent = page, numSize = numSize }, JsonRequestBehavior.AllowGet);
        }

        
    }
}