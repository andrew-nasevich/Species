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
            return _context.Species.ToArray();
        }

        [HttpPost]
        [Route("Create")]
        public IActionResult Create([FromBody]SpeciesModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var species = new Database.Entities.Species()
            {
                RussianName = model.RussianName,
                LatinName = model.RussianName,
                OrderId = model.OrderId,
                BelarusianName = model.BelarusianName,
                Category = model.Category,
                Description = model.Description,
                Image = model.Image,
            };

            _context.Species.Add(species);
            _context.SaveChanges();

            species.Order = _context.Orders.FirstOrDefault(t => t.Id == species.OrderId);
            return new JsonResult(species);
        }

        [HttpPut]
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
            species.LatinName = model.LatinName;
            species.OrderId = model.OrderId;
            species.BelarusianName = model.BelarusianName;
            species.Category = model.Category;
            species.Description = model.Description;
            species.Image = model.Image;

            _context.Entry(species).State = EntityState.Modified;
            _context.SaveChanges();

            return Ok();
        }

        [HttpDelete]
        [Route("Delete")]
        public IActionResult Delete(int id)
        {
            var species = _context.Species.FirstOrDefault(s => s.Id == id);
            if (species == null)
            {
                return BadRequest();
            }

            _context.Entry(species).State = EntityState.Deleted;
            _context.SaveChanges();

            return Ok();
        }
    }
}