using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SCM.Areas.Retailer.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Retailer/Home/

        public ActionResult Index()
        {
            return View();
        }

        public RedirectResult Rd()
        {
            return Redirect("/Supplier");
        }

    }
}
