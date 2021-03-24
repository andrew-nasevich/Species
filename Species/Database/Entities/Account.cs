using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Species.Database.Entities
{
    public class Account
    {
        public int Id { get; set; }
        public string Mail { get; set; }
        public string Hash { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
    }
}
