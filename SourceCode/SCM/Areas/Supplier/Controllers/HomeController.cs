using SCM.Attributes;
using System.Web.Mvc;

namespace SCM.Areas.Supplier.Controllers
{
    [Authorization(AuthSaveKey="Supplier",AuthSaveType="cookie",AuthUrl="/Supplier/Sign/Signin")]
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
