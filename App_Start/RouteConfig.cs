using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace CrmMvc
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Default1", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
               name: "Contact",
               url: "Contact/Search/{DomainURL}",
               defaults: new { controller = "Contact", action = "Search", DomainURL = UrlParameter.Optional }
           );

            routes.MapRoute(
                name: "B",
                url: "R",
                defaults: new { controller = "HomeController", action = "Redirects" }
            );
        }

        protected void Application_Start()
        {
            RegisterRoutes(RouteTable.Routes);
        }

    }
}