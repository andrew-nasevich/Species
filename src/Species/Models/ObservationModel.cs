using Microsoft.AspNetCore.Mvc.ModelBinding;
using System;

namespace Species.Models
{
    public class ObservationModel
    {
        public int Id { get; set; }
        [BindRequired]
        public double Latitude { get; set; }
        
        [BindRequired]
        public double Longitude { get; set; }

        [BindRequired]
        public DateTime Date { get; set; }

        [BindRequired]
        public string Description { get; set; }

        [BindRequired]
        public int SpeciesId { get; set; }
        public int AccountId { get; set; }
    }
}
