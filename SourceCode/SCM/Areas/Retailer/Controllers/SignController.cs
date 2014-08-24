using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SCM.Areas.Retailer.Controllers
{
    public class SignController : Controller
    {
        //
        // GET: /Retailer/Sign/

        public ActionResult Signin()
        {
            ViewBag.Title = "零售商登录";
            return View();
        }

    }
}
