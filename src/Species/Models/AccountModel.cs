using Microsoft.AspNetCore.Mvc.ModelBinding;

namespace Species.Models
{
    public class AccountModel
    {
        public int Id { get; set; }

        [BindRequired]
        public string Mail { get; set; }

        [BindRequired]
        public string Password { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
    }
}
