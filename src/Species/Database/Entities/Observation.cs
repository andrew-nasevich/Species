namespace Species.Database.Entities
{
    public class Observation
    {
        public int Id { get; set; }
        public double Latitude { get; set; }
        public double Longitude { get; set; }
        public string Description { get; set; }
        public int SpeciesId { get; set; }
        public Species Speacies { get; set; }
        public int AccountId { get; set; }
        public Account Account { get; set; }
    }
}