namespace Species.Models
{
    public class ClassModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string LatinName { get; set; }
        public string Description { get; set; }
        public int SpeciesTypeId { get; set; }
    }
}
