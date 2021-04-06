﻿namespace Species.Database.Entities
{
    public class Species
    {
        public int Id { get; set; }
        public string Class { get; set; }
        public string RussianName { get; set; }
        public string LatinName { get; set; }
        public string BelarusianName { get; set; }
        public int Category { get; set; }
        public int SpeciesTypeId { get; set; }
        public SpeciesType SpeciesType { get; set; }
    }
}
