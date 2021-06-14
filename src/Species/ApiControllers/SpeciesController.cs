using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
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
        private readonly SpeaciesContext _context;
        private readonly IWebHostEnvironment _appEnvironment;

        private readonly string[] _allowedExtensions = { ".jpg", ".jfif", ".webp" };

        public SpeciesController(SpeaciesContext context, IWebHostEnvironment appEnvironment)
        {
            _context = context;
            _appEnvironment = appEnvironment;
        }

        [HttpGet]
        [Route("Species")]
        public Database.Entities.Species[] Species()
        {
            return _context.Species.ToArray();
        }

        [HttpPost]
        [Authorize]
        [Route("Create")]
        public async Task<IActionResult> Create(IFormCollection data, IFormFile imageFile)
        {
            if  (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var extension = Path.GetExtension(imageFile.FileName);
            if(extension == null || !_allowedExtensions.Contains(extension))
            {
                return BadRequest();
            }

            var fileName = $"{data["LatinName"]}{extension}";

            await SaveFile(imageFile, fileName);

            var species = new Database.Entities.Species()
            {
                RussianName = data["RussianName"],
                LatinName = data["LatinName"],
                OrderId = int.Parse(data["OrderId"]),
                BelarusianName = data["BelarusianName"],
                Category = int.Parse(data["Category"]),
                Description = data["Description"],
                ImageFileName = fileName,
            };

            _context.Species.Add(species);
            _context.SaveChanges();

            species.Order = _context.Orders.FirstOrDefault(t => t.Id == species.OrderId);
            return new JsonResult(species);
        }

        [HttpPut]
        [Authorize]
        [Route("Update")]
        public async Task<IActionResult> Update(IFormCollection data, IFormFile imageFile)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var species = _context.Species.FirstOrDefault(s => s.Id == int.Parse(data["Id"]));
            if (species == null)
            {
                return BadRequest();
            }

            if (imageFile != null)
            {
                var extension = Path.GetExtension(imageFile.FileName);
                if (extension == null || !_allowedExtensions.Contains(extension))
                {
                    return BadRequest();
                }

                var fileName = $"{data["LatinName"]}{extension}";

                await SaveFile(imageFile, fileName);

                species.ImageFileName = fileName;
            }

            species.RussianName = data["RussianName"];
            species.LatinName = data["LatinName"];
            species.OrderId = int.Parse(data["OrderId"]);
            species.BelarusianName = data["BelarusianName"];
            species.Category = int.Parse(data["Category"]);
            species.Description = data["Description"];

            _context.Entry(species).State = EntityState.Modified;
            _context.SaveChanges();

            return new JsonResult(species);
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


        public async Task<IActionResult> SaveFile(IFormFile file, string fileName)
        {
            if (file == null || fileName == null)
            {
                throw new ArgumentException("File or file name can't be null.");
            }

            string path = "/Images/" + fileName;
            using (var fileStream = new FileStream(_appEnvironment.WebRootPath + path, FileMode.Create))
            {
                await file.CopyToAsync(fileStream);
            }

            return Ok();
        }
    }
}