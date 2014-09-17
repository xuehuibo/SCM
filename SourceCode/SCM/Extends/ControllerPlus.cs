using System.Web.Mvc;

namespace SCM.Extends
{
    public class ControllerPlus : Controller
    {
        #region js Class

        /// <summary>
        /// 脚本读取器
        /// </summary>
        /// <returns></returns>
        [OutputCache(CacheProfile = "cacheCfg")]
        public JavaScriptResult LoadJs()
        {
            HttpContext.Response.Cache.SetOmitVaryStar(true);
            var file = string.Format("/Areas/{0}/Scripts/{1}/{2}.js",
                HttpContext.Request.Url.Segments[1],
                RouteData.Values["controller"],
                HttpContext.Request.Url.Segments[4]
                );
            using (var stream = System.IO.File.OpenText(Server.MapPath(file)))
            {
                return JavaScript(stream.ReadToEnd());
            }
        }
        /// <summary>
        /// 模板读取器
        /// </summary>
        /// <param name="tplName"></param>
        /// <returns></returns>
        [OutputCache(CacheProfile = "cacheCfg")]
        public PartialViewResult LoadTpl()
        {
            Response.Cache.SetOmitVaryStar(true);
            return PartialView(HttpContext.Request.Url.Segments[4]);
        }
        #endregion
    }
}