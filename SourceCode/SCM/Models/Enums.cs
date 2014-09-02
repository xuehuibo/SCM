namespace SCM.Models
{
    /// <summary>
    /// 对象状态
    /// 如商品状态、供应商状态
    /// </summary>
    public enum ObjectStatus
    {
        未启用=0,
        已启用 = 1,
        已禁用 = 2,
        已作废 = 3
    }

    /// <summary>
    /// 单据状态
    /// 标志着单据运转流程
    /// </summary>
    public enum BillStatus
    {
        未提交 = 0,
        已提交 = 1,
        已查阅 = 2,
        正审批 = 3,
        已审批 = 4,
        已拒绝 = 5
    }

    /// <summary>
    /// 供应商类型
    /// </summary>
    public enum SupplierType
    {
        
    }
}
