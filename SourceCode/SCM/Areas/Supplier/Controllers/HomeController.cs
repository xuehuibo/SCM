using SCM.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SCM.Areas.Supplier.Controllers
{
    //[Authorization(AuthSaveKey="Supplier",AuthSaveType="session",AuthUrl="/Supplier/Sign/Signin")]
    public class HomeController : Controller
    {
        //
        // GET: /Supplier/Home/
        public ViewResult Index()
        {
            return View();
        }
    }
}
