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

        /// <summary>
        /// 登录
        /// </summary>
        /// <returns></returns>
        public ActionResult Signin()
        {
            return View();
        }

        /// <summary>
        /// 注销
        /// </summary>
        /// <returns></returns>
        public EmptyResult SignOff()
        {
            return new EmptyResult();
        }
    }
}
