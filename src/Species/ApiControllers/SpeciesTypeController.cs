using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Species.Database;
using Species.Database.Entities;

namespace Species.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SpeciesTypeController : ControllerBase
    {
        public readonly SpeaciesContext _context;


        public SpeciesTypeController(SpeaciesContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("SpeciesTypes")]
        public SpeciesType[] SpeciesTypes()
        {
            return _context.SpeciesTypes.ToArray();
        }
    }
}