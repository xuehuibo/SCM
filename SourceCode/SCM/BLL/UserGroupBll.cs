using System.Collections.Generic;
using System.Configuration;
using DAL;
using DAL.Helper;
using SCM.Models;

namespace SCM.BLL
{
    public class UserGroupBll
    {
        public static IEnumerable<UserGroup> Get(int page,int maxCount)
        {
            var startIndex = (page-1)*maxCount;
            using (var dal = DalBuilder.CreateDal(ConfigurationManager.ConnectionStrings["SYSDB"].ConnectionString, 0))
            {
                int i;
                var rstDt = dal.Select(
                    "select * from TUSERGROUP", 
                    startIndex, maxCount, out i);
                return ObjectHelper.BuildObject<UserGroup>(rstDt);
            }
        } 
    }
}