using System;
using System.Data;

namespace DAL.Interface
{
    public interface IDal:IDisposable
    {
        #region transaction
        /// <summary>
        /// 开启事务
        /// </summary>
        /// <returns></returns>
        void BeginTran();

        /// <summary>
        /// 提交事务
        /// </summary>
        /// <returns></returns>
        void CommitTran();

        /// <summary>
        /// 回滚事务
        /// </summary>
        /// <returns></returns>
        void RollBackTran();
        #endregion

        #region Query

        /// <summary>
        /// 查询
        /// create by xuehuibo 2014-03-21
        /// </summary>
        /// <param name="oracleString">sql语句</param>
        /// <param name="i"></param>
        /// <param name="paramArray"></param>
        /// <returns></returns>
        DataTable Select(string oracleString, out int i, params IDbDataParameter[] paramArray);

        /// <summary>
        /// 采用分页的查询
        /// </summary>
        /// <param name="oracleString"></param>
        /// <param name="startRecord"></param>
        /// <param name="maxRecords"></param>
        /// <param name="i"></param>
        /// <param name="paramArray"></param>
        /// <returns></returns>
        DataTable Select(string oracleString, int startRecord, int maxRecords, out int i, params IDbDataParameter[] paramArray);

        DataSet Select(string oracleString, params IDbDataParameter[] paramArray);

        bool OpenReader(string oracleString, params IDbDataParameter[] paramArray);

        #endregion

        #region Procedure

        /// <summary>
        /// 执行存储过程
        /// create by xuehuibo 2014-03-21
        /// </summary>
        /// <param name="procedureName">存储过程名称</param>
        /// <param name="paramArray">存储过程参数</param>
        /// <returns></returns>
        DataSet RunProcedure(string procedureName, params IDbDataParameter[] paramArray);

        #endregion

        #region Insert
        bool Save(DataTable dt, out int i);
        #endregion

        #region execute
        void Execute(string oracleString, out int i, params IDbDataParameter[] Params);
        #endregion

        #region ParameterCreater
        IDbDataParameter CreateParameter(string paramName,object value);
        IDbDataParameter CreateParameter(string paramName, DbType dbType);
        IDbDataParameter CreateParameter(string paramName, DbType dbType,int size);
        IDbDataParameter CreateParameter(string paramName, DbType dbType,ParameterDirection direction);
        IDbDataParameter CreateParameter(string paramName, DbType dbType,int size ,ParameterDirection direction);

        IDbDataParameter CloneParameter(IDbDataParameter param);
        #endregion

        /// <summary>
        /// DataReader
        /// 同一时间只能开一个reader
        /// </summary>
        IDataReader DataReader
        {
            get;
            set;
        }
    }
}
