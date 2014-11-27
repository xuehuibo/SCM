using System.Web.Mvc;

namespace SCM.Areas.Retailer.Controllers
{
    public class SignController : Controller
    {
        //
        // GET: /Retailer/Sign/

        public ViewResult Signin()
        {
            ViewBag.Title = "零售商登录";
            return View();
        }
    }
}
