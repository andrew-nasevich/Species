namespace Species.Database.Entities
{
    public class Class
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string LatinName { get; set; }
        public int SpeciesTypeId { get; set; }
        public SpeciesType SpeciesType { get; set; }
    }
}
