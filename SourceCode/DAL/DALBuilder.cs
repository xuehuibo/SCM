using System;
using DAL.DAL;
using DAL.Interface;

namespace DAL
{
    public class DalBuilder
    {
        /// <summary>
        /// 创建DAL实例
        /// </summary>
        /// <param name="connectionString"></param>
        /// <param name="dbType">0 MSSql， 1 Oracle</param>
        /// <returns></returns>
        public static IDal CreateDal(string connectionString, int dbType)
        {
            switch (dbType)
            {
                case 0:
                    return new MsSqlDal(connectionString);
                case 1:
                    return new OracleDal(connectionString);
                default:
                    throw new Exception("未找到该数据库类型");
            }
        }
    }
}
