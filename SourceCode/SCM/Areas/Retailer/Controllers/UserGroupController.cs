using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using SCM.Extends;

namespace SCM.Areas.Retailer.Controllers
{
    public class UserGroupController : Controller
    {
        //
        // GET: /Retailer/UserGroupView/

        public ActionResult Index()
        {
            ViewBag.Title = "用户组管理";
            return View();
        }
        #region 模板
        /// <summary>
        /// 用户组模板
        /// </summary>
        /// <returns></returns>
        [OutputCache(CacheProfile = "cacheCfg")]
        public PartialViewResult UserGroupItemTpl()
        {
            Response.Cache.SetOmitVaryStar(true);
            return PartialView();
        }
        #endregion

        #region js Class
        /// <summary>
        /// 用户组模板
        /// </summary>
        /// <returns></returns>
        [OutputCache(CacheProfile = "cacheCfg")]
        public JavaScriptResult UserGroupModel()
        {
            Response.Cache.SetOmitVaryStar(true);
            return JavaScript(JavaScriptLoader.Load(Server.MapPath("/Areas/Retailer/Scripts/UserGroup/UserGroupModel.js")));
        }
        #endregion
    }
}
