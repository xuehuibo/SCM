using System.Web;
using System.Web.Optimization;
using dotless.Core;
namespace SCM
{
    public class BundleConfig
    {
        // 有关 Bundling 的详细信息，请访问 http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            #region 框架或插件
            /*bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                         "~/Scripts/JQuery/jquery-{version}.js"));
            bundles.Add(new ScriptBundle("~/bundles/backbone").Include(
                        "~/Scripts/Backbone/backbone.js"
                ));
            bundles.Add(new ScriptBundle("~/bundles/underscore").Include(
                       "~/Scripts/Underscore/underscore.js"
                ));
            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                        "~/Scripts/Bootstrap/bootstrap.js"

                ));
            bundles.Add(new StyleBundle("~/bundles/css").Include(
                        "~/Content/css/bootstrap-theme.css",
                        "~/Content/css/bootstrap.css",
                        "~/Content/css/dashboard.css"
                ));
            bundles.Add(new ScriptBundle("~/bundles/UserDefine").Include(
                        "~/Scripts/UserDefine/NameSpaceReg.js"
                ));
            bundles.Add(new ScriptBundle("~/bundles/datetimepickerJs").Include(
                    "~/Scripts/Bootstrap/bootstrap-datetimepicker.js",
                    "~/Scripts/Bootstrap/bootstrap-datetimepicker.zh-CN.js"
                ));
            bundles.Add(new StyleBundle("~/bundles/datetimepickerCss").Include(
                    "~/Content/css/bootstrap-datetimepicker.css"
                ));
            */
            bundles.Add(new StyleBundle("~/bundles/signinCss").Include(
                "~/Content/css/signin.css"
                ));
            #endregion
            //var lessBundles = new Bundle("~/bundles/less").Include(
            //    "~/Content/less/build_standalone.less",
            //    "~/Content/less/build.less",
            //    "~/Content/less/datetimepicker.less");
            //lessBundles.Transforms.Add(new LessTransform());
            //lessBundles.Transforms.Add(new CssMinify());
            //bundles.Add(lessBundles);
        }
    }
    public class LessTransform : IBundleTransform
    {
        public void Process(BundleContext context, BundleResponse response)
        {
            response.Content = dotless.Core.Less.Parse(response.Content);
            response.ContentType = "text/css";
        }
    }
}