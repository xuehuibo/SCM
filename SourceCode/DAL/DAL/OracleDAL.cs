using System;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Text;
using DAL.Interface;

namespace DAL.DAL
{
    /// <summary>
    /// Oracle操作类
    /// </summary>
    internal class OracleDal: IDal
    {
        #region 构造函数
        /// <summary>
        /// 构造函数
        /// create by xuehuibo 2014-03-21
        /// </summary>
        /// <param name="connectionString">数据库连接参数</param>
        public OracleDal(string connectionString)
        {
            Connection = new OracleConnection(connectionString);
            Connection.Open();
        }
        #endregion

        #region 私有变量
        /// <summary>
        /// 数据库连接
        /// </summary>
        private OracleConnection Connection
        {
            get;
            set;
        }

        /// <summary>
        /// 事务
        /// </summary>
        private OracleTransaction Tran
        {
            get;
            set;
        }

        #endregion

        #region Query

        /// <summary>
        /// 查询
        /// create by xuehuibo 2014-03-21
        /// </summary>
        /// <param name="oracleString">Oracle语句</param>
        /// <param name="i"></param>
        /// <param name="paramArray"></param>
        /// <returns></returns>
        public DataTable Select(string oracleString,out int i, params IDbDataParameter[] paramArray)
        {
            var cmd = new OracleCommand(oracleString, Connection) {Transaction = Tran};
            if (paramArray != null && paramArray.Length > 0)
            {
                cmd.Parameters.AddRange(paramArray);
            }
            var adapter = new OracleDataAdapter(cmd);
            var dataTable = new DataTable();
            i=adapter.Fill(dataTable);
            return dataTable;
        }

        /// <summary>
        /// 查询
        /// create by xuehuibo 2014-03-21
        /// </summary>
        /// <param name="oracleString">Oracle语句</param>
        /// <param name="startRecord"></param>
        /// <param name="maxRecords"></param>
        /// <param name="i"></param>
        /// <param name="paramArray"></param>
        /// <returns></returns>
        public DataTable Select(string oracleString,int startRecord,int maxRecords, out int i, params IDbDataParameter[] paramArray)
        {
            var cmd = new OracleCommand(oracleString, Connection) {Transaction = Tran};
            if (paramArray != null && paramArray.Length > 0)
            {
                cmd.Parameters.AddRange(paramArray);
            }
            var adapter = new OracleDataAdapter(cmd);
            var dataTable = new DataTable();
            i = adapter.Fill(startRecord,maxRecords,dataTable);
            return dataTable;
        }

        public DataSet Select(string oracleString, params IDbDataParameter[] paramArray)
        {
            var cmd = new OracleCommand(oracleString, Connection) {Transaction = Tran};
            if (paramArray != null && paramArray.Length > 0)
            {
                cmd.Parameters.AddRange(paramArray);
            }
            var adapter = new OracleDataAdapter(cmd);
            var ds = new DataSet();
            adapter.Fill(ds);
            return ds;
        }

        public bool OpenReader(string oracleString, params IDbDataParameter[] paramArray)
        {
            if (DataReader != null && !DataReader.IsClosed)
            {
                //如果reader未关闭，则抛异常
                throw new Exception("DataReader未关闭");
            }
            var cmd = new OracleCommand(oracleString, Connection) {Transaction = Tran};
            if (paramArray != null && paramArray.Length > 0)
            {
                cmd.Parameters.AddRange(paramArray);
            }
            DataReader= cmd.ExecuteReader();
            return true;
        }
        #endregion

        #region Procedure

        /// <summary>
        /// 执行存储过程
        /// create by xuehuibo 2014-03-21
        /// </summary>
        /// <param name="procedureName">存储过程名称</param>
        /// <param name="paramArray">存储过程参数</param>
        /// <returns></returns>
        public DataSet RunProcedure(string procedureName, params IDbDataParameter[] paramArray)
        {
            var ds = new DataSet();
            var cmd = new OracleCommand(procedureName, Connection);
            if (paramArray != null && paramArray.Length > 0)
            {
                cmd.Parameters.AddRange(paramArray);
            }
            cmd.Transaction = Tran;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            if (paramArray == null) return ds;
            foreach (var p in from OracleParameter p in paramArray where p.OracleType == OracleType.Cursor select p)
            {
                ds.Tables.Add(p.ParameterName);//添加表
                //游标类型
                var reader = (OracleDataReader)p.Value;
                //创建表结构
                for (var i = 0; i < reader.FieldCount; i++)
                {
                    var col = new DataColumn {ColumnName = reader.GetName(i), DataType = reader.GetFieldType(i)};
                    ds.Tables[p.ParameterName].Columns.Add(col);
                }
                //填充数据
                while (reader.Read())
                {
                    var row = ds.Tables[p.ParameterName].NewRow();
                    for (var i = 0; i < reader.FieldCount; i++)
                    {
                        row[i] = reader[i];
                    }
                    ds.Tables[p.ParameterName].Rows.Add(row);
                }
                reader.Close();
            }
            return ds;
        }

        #endregion

        #region Insert
        public bool Save(DataTable dt,  out int i)
        {
            var oda = new OracleDataAdapter();
            var selectOracle = new StringBuilder(256);
            selectOracle.AppendFormat(" Select * From {0} Where 1!=1 ", dt.TableName);
            var selectCommand = new OracleCommand(selectOracle.ToString(), Connection) {Transaction = Tran};
            oda.SelectCommand = selectCommand;
            var ocb=new OracleCommandBuilder(oda);
            oda.InsertCommand = ocb.GetInsertCommand();
            oda.UpdateCommand = ocb.GetUpdateCommand();
            i=oda.Update(dt);
            return true;
        }
        #endregion

        #region Execute
        public void Execute(string oracleString, out int i, params IDbDataParameter[] paramArray)
        {
            var cmd = new OracleCommand(oracleString, Connection) {Transaction = Tran};
            if (paramArray != null && paramArray.Length > 0)
            {
                cmd.Parameters.AddRange(paramArray);
            }
            i = cmd.ExecuteNonQuery();
        }
        #endregion

        #region IDisposable 成员

        public void Dispose()
        {
            if (DataReader != null && !DataReader.IsClosed)
            {
                DataReader.Close();
            }
            //关闭连接并释放
            Connection.Close();
            Connection = null;
        }

        #endregion

        #region Transcation

        public void BeginTran()
        {
            Tran = Connection.BeginTransaction();
        }

        public void CommitTran()
        {
            try
            {
                Tran.Commit();
            }
            catch
            {
                Tran.Rollback();
                throw;
            }
        }

        public void RollBackTran()
        {
            Tran.Rollback();
        }

        #endregion

        #region ParameterCreater

        public IDbDataParameter CreateParameter(string paramName, object value)
        {
            if (paramName[0] == '@')
            {
                paramName = ":" + paramName.Substring(1, paramName.Length - 1);//如果变量以@开头，替换为：
            }
            if (paramName[0] != ':')
            {
                paramName = ":" + paramName;//如果变量不以：开头，则添加：
            }
            return new OracleParameter(paramName, value);
        }

        public IDbDataParameter CreateParameter(string paramName, DbType dbType)
        {
            if (paramName[0] != ':')
            {
                paramName = ":" + paramName;
            }
            return new OracleParameter
            {
                ParameterName = paramName,
                DbType = dbType
            };
        }

        public IDbDataParameter CreateParameter(string paramName, DbType dbType, int size)
        {
            if (paramName[0] != ':')
            {
                paramName = ":" + paramName;
            }
            return new OracleParameter
            {
                ParameterName = paramName,
                DbType = dbType,
                Size = size
            };
        }

        public IDbDataParameter CreateParameter(string paramName, DbType dbType, ParameterDirection direction)
        {
            if (paramName[0] != ':')
            {
                paramName = ":" + paramName;
            }
            return new OracleParameter
            {
                ParameterName = paramName,
                DbType = dbType,
                Direction = direction
            };
        }

        public IDbDataParameter CreateParameter(string paramName, DbType dbType, int size, ParameterDirection direction)
        {
            if (paramName[0] != ':')
            {
                paramName = ":" + paramName;
            }
            return new OracleParameter
            {
                ParameterName = paramName,
                DbType = dbType,
                Direction = direction,
                Size = size
            };
        }

        /// <summary>
        /// 复制参数
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public IDbDataParameter CloneParameter(IDbDataParameter param)
        {
            return new OracleParameter
            {
                ParameterName = param.ParameterName,
                DbType = param.DbType,
                Direction = param.Direction,
                Size = param.Size,
                Value=param.Value
            };
        }

        #endregion


        public IDataReader DataReader
        {
            get;
            set;
        }
    }
}
