namespace Species.Database.Entities
{
    public class Species
    {
        public int Id { get; set; }
        public string Class { get; set; }
        public string RussingName { get; set; }
        public string LatinName { get; set; }
        public string BelarusianName { get; set; }
        public string Category { get; set; }
        public int SpeciesTypeId { get; set; }
        public SpeciesType SpeciesType { get; set; }
    }
}
