using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Species.Database.Entities;

namespace Species.Database
{
    public class SpeaciesContext : DbContext
    {
        private readonly IConfiguration _configuration;

        public DbSet<Account> Accounts { get; set; }
        public DbSet<SpeciesType> SpeciesTypes { get; set; }
        public DbSet<Entities.Species> Species { get; set; }
        public DbSet<Observation> Observations { get; set; }

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