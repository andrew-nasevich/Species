namespace Species.Database.Entities
{
    public class Species
    {
        public int Id { get; set; }
        public string RussianName { get; set; }
        public string LatinName { get; set; }
        public string BelarusianName { get; set; }
        public int Category { get; set; }
        public string Description { get; set; }
        public string ImageFileName { get; set; }
        public int OrderId { get; set; }
        public Order Order { get; set; }
    }
}
