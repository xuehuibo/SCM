using System.Linq.Expressions;
using System.Web.Http;
using System.Web.Http.Dispatcher;
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
                new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                new[] { "SCM.Areas.Supplier.Controllers" }
            );

            GlobalConfiguration.Configuration.Routes.MapHttpRoute(
                AreaName + "Api",
                @"api/" + AreaName + @"/{controller}/{id}",
                new
                {
                    action = RouteParameter.Optional,
                    id = RouteParameter.Optional,
                    namespaceName = new string[] { string.Format("SCM.Areas.{0}.Controllers", this.AreaName) }
                }
            );
        }
    }
}
