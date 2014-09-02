namespace SCM.Models
{
    /// <summary>
    /// 通讯报文
    /// </summary>
    public class ComMessage
    {
        public int Status { get; set; }

        public string Message { get; set; }

        public object Content { get; set; }
    }
}
