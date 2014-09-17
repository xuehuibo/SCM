using System.Web.Mvc;
using SCM.Extends;

namespace SCM.Areas.Retailer.Controllers
{
    public class SignController : ControllerPlus
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
