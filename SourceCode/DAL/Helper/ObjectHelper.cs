﻿using System;
using System.Collections.Generic;
using System.Data;

namespace DAL.Helper
{
    public class ObjectHelper
    {
        #region 从数据集对象生成对象

        /// <summary>
        /// 组装对象
        /// </summary>
        /// <typeparam name="T">对象泛型</typeparam>
        /// <param name="dt">数据源DataTable</param>
        /// <returns>返回的对象集合</returns>
        public static ICollection<T> BuildObject<T>(DataTable dt)
        {
            ICollection<T> objs = new List<T>();
            foreach (DataRow row in dt.Rows)
            {
                T t = BuildObject<T>(row,dt.Columns);
                objs.Add(t);
            }
            return objs;
        }

        /// <summary>
        /// 组装 DataObject
        /// </summary>
        /// <typeparam name="T">对象泛型</typeparam>
        /// <param name="dataReader">数据源DataReader</param>
        /// <returns>返回的对象集合</returns>
        public static ICollection<T> BuildObject<T>(IDataReader dataReader)
        {
            var dt = new DataTable();
            dt.Load(dataReader);
            return BuildObject<T>(dt);
        }

        /// <summary>
        /// 组装DataObject
        /// </summary>
        /// <typeparam name="T">对象泛型</typeparam>
        /// <param name="row">数据源DataRow</param>
        /// <param name="columns"></param>
        /// <returns>返回的对象</returns>
        public static T BuildObject<T>(DataRow row,DataColumnCollection columns)
        {
            var obj = Activator.CreateInstance<T>();
            var propertyInfos = typeof(T).GetProperties();
            foreach (var p in propertyInfos)
            {
                if (!columns.Contains(p.Name))
                {
                    //如果该属性未包含在columns中，则跳过
                    continue;
                }
                switch (p.PropertyType.Name)
                {
                    case "String":
                        p.SetValue(obj, Convert.ToString(row[p.Name]).TrimEnd(), null);
                        break;
                    case "Int16":
                         p.SetValue(obj, Convert.ToInt16(row[p.Name]), null);
                        break;
                    case "Int64":
                         p.SetValue(obj, Convert.ToInt64(row[p.Name]), null);
                        break;
                    case "Int32":
                        p.SetValue(obj, Convert.ToInt32(row[p.Name]), null);
                        break;
                    case "Decimal":
                        p.SetValue(obj, Convert.ToDecimal(row[p.Name]), null);
                        break;
                    case "DateTime":
                        p.SetValue(obj, Convert.ToDateTime(row[p.Name]), null);
                        break;
                    case "Single":
                        p.SetValue(obj, Convert.ToSingle(row[p.Name]), null);
                        break;
                    case "Boolean":
                        p.SetValue(obj, Convert.ToBoolean(row[p.Name]), null);
                        break;
                }
            }
            return obj;
        }
        #endregion
    }
}
