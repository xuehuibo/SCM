using System.Web.Mvc;

namespace SCM.Areas.Supplier
{
    public class SupplierAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Supplier";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Supplier",
                "Supplier/{controller}/{action}/{id}",
                new { controller = "Main", action = "Index", id = UrlParameter.Optional },
                new string[] { "SCM.Areas.Supplier.Controllers" }
            );
        }
    }
}
