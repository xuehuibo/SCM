using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using SCM.BLL;
using SCM.Models;

namespace SCM.Areas.Retailer.Controllers
{
    public class UserGroupApiController : ApiController
    {
        public IEnumerable<UserGroup> Get(int page)
        {
            var httpCookie = HttpContext.Current.Request.Cookies["Retailer"];
            if (httpCookie == null)
            {
                throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.Forbidden));
            }
            var tooken = httpCookie.Value;
            try
            {
                return UserGroupBll.Get(page, 10);
            }
            catch
            {
                throw new HttpResponseException(new HttpResponseMessage(HttpStatusCode.BadRequest));
            }
        }
    }
}
