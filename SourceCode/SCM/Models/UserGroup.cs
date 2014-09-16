namespace SCM.Models
{
    public class UserGroup
    {
        public decimal Id { get; set; }

        public string GroupCode { get; set; }

        public string GroupName { get; set; }

        public string GroupType { get; set; }

        public short Status { get; set; }

        public string Remark { get; set; }
    }
}