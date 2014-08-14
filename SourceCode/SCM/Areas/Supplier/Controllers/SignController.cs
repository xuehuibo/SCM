using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SCM.Areas.Supplier.Controllers
{
    public class SignController : Controller
    {
        //
        // GET: /Supplier/Sign/
        /// <summary>
        /// 登录
        /// </summary>
        /// <returns></returns>
        public ActionResult Signin()
        {
            ViewBag.Title = "供应商登录";
            return View();
        }

        /// <summary>
        /// 注册
        /// </summary>
        /// <returns></returns>
        public ActionResult SignUp()
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
