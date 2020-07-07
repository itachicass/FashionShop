using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace FashionShop
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            

            routes.MapRoute(
                name: "GetItemByGender",
                url: "{Product}/{ProductByGender}/{id}",
                defaults: new { controller = "Product", action = "ProductByGender", id = UrlParameter.Optional }
            );
            routes.MapRoute(
               name: "GetItemByID",
               url: "{Product}/{Product_Detail}/{id}",
               defaults: new { controller = "Product", action = "Product_Detail", id = UrlParameter.Optional }
           );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}",
                defaults: new { controller = "Home", action = "Index"}
            );
        }
    }
}
