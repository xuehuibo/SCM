using System.Web.Mvc;

namespace SCM.Areas.Retailer
{
    public class RetailerAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Retailer";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Retailer",
                "Retailer/{controller}/{action}/{id}",
                new { controller="Home", action = "Index", id = UrlParameter.Optional },
                new string[] { "SCM.Areas.Retailer.Controllers" }
            );
        }
    }
}
