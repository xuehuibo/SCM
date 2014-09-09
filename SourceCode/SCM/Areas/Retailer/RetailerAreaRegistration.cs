using System.Web.Http;
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
                new[] { "SCM.Areas.Retailer.Controllers" }
            );

            GlobalConfiguration.Configuration.Routes.MapHttpRoute(
                AreaName + "Api",
                @"api/" + AreaName + @"/{controller}/{id}",
                new
                {
                    action = RouteParameter.Optional,
                    id = RouteParameter.Optional,
                    namespaceName = new string[] {string.Format("SCM.Areas.{0}.Controllers", this.AreaName)}
                }
            );
        }
    }
}
