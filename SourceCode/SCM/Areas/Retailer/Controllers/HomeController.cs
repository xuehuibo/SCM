using SCM.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SCM.Areas.Retailer.Controllers
{
    [Authorization(AuthSaveKey = "Retailer", AuthSaveType = "cookie", AuthUrl = "/Retailer/Sign/Signin")]
    public class HomeController : Controller
    {
        //
        // GET: /Retailer/Home/

        public ViewResult Index()
        {
            return View();
        }
    }
}
