using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Models
{
    /// <summary>
    /// 供应商
    /// </summary>
    public class Supplier
    {
        public int ID
        {
            get;
            set;
        }

        /// <summary>
        /// 供应商编码
        /// </summary>
        public string SupplierCode
        {
            get;
            set;
        }

        /// <summary>
        /// 供应商名称
        /// </summary>
        public string SupplierName
        {
            get;
            set;
        }

        /// <summary>
        /// 注册资金 
        /// 单位：万元
        /// </summary>
        public int RegCapital
        {
            get;
            set;
        }

        /// <summary>
        /// 开户行
        /// </summary>
        public string Bank
        {
            get;
            set;
        }

        /// <summary>
        /// 法人
        /// </summary>
        public string LegalPerson
        {
            get;
            set;
        }

        /// <summary>
        /// 联系人
        /// </summary>
        public string ContactPerson
        {
            get;
            set;
        }

        public string Tel
        {
            get;
            set;
        }

        public string Tel2nd
        {
            get;
            set;
        }

        public string Email
        {
            get;
            set;
        }

        public string Address
        {
            get;
            set;
        }

        public string SPassword
        {
            get;
            set;
        }

        public int Level
        {
            get;
            set;
        }

        /// <summary>
        /// 状态值
        /// </summary>
        public int Status
        {
            get;
            set;
        }

        /// <summary>
        /// 状态枚举值
        /// </summary>
        public ObjectStatus StatusEnum
        {
            get
            {
                return (ObjectStatus)Status;
            }
        }
    }
}
