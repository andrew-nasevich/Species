using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using System.Diagnostics.CodeAnalysis;

namespace Species.Models
{
    public class SpeciesModel
    {
        public int Id { get; set; }

        [NotNull]
        [BindRequired]
        public string Class { get; set; }

        [NotNull]
        [BindRequired]
        public string RussianName { get; set; }

        [NotNull]
        [BindRequired]
        public string LatinName { get; set; }

        [NotNull]
        [BindRequired]
        public string BelarusianName { get; set; }

        [BindRequired]
        public int Category { get; set; }

        [NotNull]
        [BindRequired]
        public string Description { get; set; }

        [BindRequired]
        public int OrderId { get; set; }
    }
}
