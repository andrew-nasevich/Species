using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Species.Database.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Species.Database
{
    public class SpeaciesContext : DbContext
    {
        private readonly IConfiguration _configuration;

        public DbSet<Account> Accounts { get; set; }


        public SpeaciesContext(IConfiguration configuration)
        {
            _configuration = configuration;
            Database.EnsureCreated();
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(_configuration.GetConnectionString("Species"));
        }
    }
}