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
    public class ClassController : ControllerBase
    {
        public readonly SpeaciesContext _context;


        public ClassController(SpeaciesContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("Classes")]
        public Class[] Classes()
        {
            return _context.Classes.ToArray();
        }

        [HttpPost]
        [Route("Create")]
        public IActionResult Create([FromBody]ClassModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var newClass = new Class()
            {
                Name = model.Name,
                LatinName = model.LatinName,
                Description = model.Description,
                SpeciesTypeId = model.SpeciesTypeId,
            };

            _context.Classes.Add(newClass);
            _context.SaveChanges();

            newClass.SpeciesType = _context.SpeciesTypes.FirstOrDefault(st => st.Id == newClass.SpeciesTypeId);

            return new JsonResult(newClass);
        }

        [HttpPut]
        [Route("Update")]
        public IActionResult Update([FromBody]ClassModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var newClass = _context.Classes.FirstOrDefault(c => c.Id == model.Id);
            if (newClass == null)
            {
                return BadRequest();
            }

            newClass.Name = model.Name;
            newClass.LatinName = model.LatinName;
            newClass.Description = model.Description;
            newClass.SpeciesTypeId = model.SpeciesTypeId;

            _context.Entry(newClass).State = EntityState.Modified;
            _context.SaveChanges();

            return Ok();
        }

        [HttpDelete]
        [Route("Delete")]
        public IActionResult Delete(int id)
        {
            var newClass = _context.Classes.FirstOrDefault(c => c.Id == id);
            if (newClass == null)
            {
                return BadRequest();
            }

            _context.Entry(newClass).State = EntityState.Deleted;
            _context.SaveChanges();

            return Ok();
        }
    }
}