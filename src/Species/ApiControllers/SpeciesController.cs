using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Species.Database;
using Species.Models;

namespace Species.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SpeciesController : ControllerBase
    {
        public readonly SpeaciesContext _context;


        public SpeciesController(SpeaciesContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("Species")]
        public Database.Entities.Species[] Species()
        {
            return _context.Species.Include(s => s.SpeciesType).ToArray();
        }

        [HttpPost]
        [Route("Update")]
        public IActionResult Update([FromBody]SpeciesModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var species = _context.Species.FirstOrDefault(s => s.Id == model.Id);
            if(species == null)
            {
                return BadRequest();
            }

            species.RussianName = model.RussianName;
            species.LatinName = model.RussianName;
            species.SpeciesTypeId = model.SpeciesTypeId;
            species.BelarusianName = model.BelarusianName;
            species.Category = model.Category;
            species.Class = model.Class;
            species.Description = model.Description;
            species.Image = model.Image;

            _context.Entry(species).State = EntityState.Modified;
            _context.SaveChanges();

            return Ok();
        }
    }
}