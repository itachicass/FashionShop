
using FashionShop.Models.Dao;

using System.Web.Mvc;

namespace FashionShop.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ProductDao dao = new ProductDao();
            ViewData["bestseller"] = dao.BestSeller();
            ViewData["newproduct"] = dao.NewProduct();
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        
    }
}