using System.Web.Mvc;

namespace SCM.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public RedirectResult Index()
        {
            return Redirect("/Supplier");
        }
    }
}
