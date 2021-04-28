using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Species.Database;
using Species.Database.Entities;
using Species.Models;

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
            var a = _context.SpeciesTypes.ToArray();
            return _context.SpeciesTypes.ToArray();
        }

        [HttpPost]
        [Route("Create")]
        public IActionResult Create([FromBody]SpeciesTypeModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var speciesType = new SpeciesType()
            {
                Name = model.Name,
                Description = model.Description
                
            };

            _context.SpeciesTypes.Add(speciesType);
            _context.SaveChanges();

            return new JsonResult(speciesType);
        }

        [HttpPut]
        [Route("Update")]
        public IActionResult Update([FromBody]SpeciesTypeModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var speciesType = _context.SpeciesTypes.FirstOrDefault(s => s.Id == model.Id);
            if (speciesType == null)
            {
                return BadRequest();
            }

            speciesType.Name = model.Name;
            speciesType.Description = model.Description;
            _context.Entry(speciesType).State = EntityState.Modified;
            _context.SaveChanges();

            return Ok();
        }

        [HttpDelete]
        [Route("Delete")]
        public IActionResult Delete(int id)
        {
            var speciesType = _context.SpeciesTypes.FirstOrDefault(s => s.Id == id);
            if (speciesType == null)
            {
                return BadRequest();
            }

            _context.Entry(speciesType).State = EntityState.Deleted;
            _context.SaveChanges();

            return Ok();
        }
    }
}