﻿namespace Species.Database.Entities
{
    public class Order
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string LatinName { get; set; }
        public string Description { get; set; }
        public int ClassId { get; set; }
        public Class Class { get; set; }
    }
}