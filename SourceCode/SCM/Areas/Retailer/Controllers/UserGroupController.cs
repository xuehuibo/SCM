using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using SCM.Extends;

namespace SCM.Areas.Retailer.Controllers
{
    public class UserGroupController : ControllerPlus
    {
        //
        // GET: /Retailer/UserGroupView/

        public ActionResult Index()
        {
            ViewBag.Title = "用户组管理";
            return View();
        }
    }
}
