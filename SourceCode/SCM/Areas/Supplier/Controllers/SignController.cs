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
        public ViewResult Signin()
        {
            ViewBag.Title = "供应商登录";
            return View();
        }

        public ViewResult Signup()
        {
            ViewBag.Title = "供应商注册";
            return View();
        }
    }
}
