using System.Web;
using System.Web.Http;
using SCM.Models;

namespace SCM.Areas.Supplier.Controllers
{
    public class TokenController : ApiController
    {
        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="id"></param>
        /// <param name="token"></param>
        /// <returns></returns>
        public ComMessage Put(string id, Token token)
        {
            var cookie = new HttpCookie("Supplier");
            HttpContext.Current.Response.Cookies.Add(cookie);
            return new ComMessage { Status = 1 };
        }
    }
}
