using Microsoft.AspNetCore.Mvc.ModelBinding;
using System.Diagnostics.CodeAnalysis;

namespace Species.Models
{
    public class OrderModel
    {
        public int Id { get; set; }

        [NotNull]
        [BindRequired]
        public string Name { get; set; }

        [NotNull]
        [BindRequired]
        public string LatinName { get; set; }

        public string Description { get; set; }


        [BindRequired]
        public int ClassId { get; set; }
    }
}
