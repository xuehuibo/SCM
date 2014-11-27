using System.Web.Mvc;

namespace SCM.Areas.Retailer.Controllers
{
    public class UserGroupController : Controller

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
