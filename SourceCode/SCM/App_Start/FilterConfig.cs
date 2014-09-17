using System.Web;
using System.Web.Mvc;
using SCM.Extends;

namespace SCM
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new ActionFilter());
        }
    }
}