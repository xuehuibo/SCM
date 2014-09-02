namespace SCM.Models
{
    public class User
    {
        public int Id { get; set; }

        public string UserCode { get; set; }

        public string UserName { get; set; }

        public string Remark { get; set; }

        public byte Status { get; set; }

        public int UserGroupId { get; set; }

        public int UserType { get; set; }
    }
}
