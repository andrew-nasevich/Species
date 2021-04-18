using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Species.Database;
using Species.Database.Entities;
using Species.Models;

namespace Species.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ObservationController : ControllerBase
    {
        private readonly SpeaciesContext _context;


        public ObservationController(SpeaciesContext context)
        {
            _context = context;
        }


        [HttpPost]
        [Route("Add")]
        public IActionResult AddObservation([FromBody]ObservationModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            if (model.Longitude > 180)
            {
                model.Longitude = (model.Longitude + 180) % 360 - 180;
            }
            else if(model.Longitude < -180)
            {
                model.Longitude = (model.Longitude - 180) % 360 + 180;
            }

            var accountId = int.Parse(User.Claims.FirstOrDefault(c => c.Type == "id").Value);

            var observation = new Observation
            {
                Description = model.Description,
                Latitude = model.Latitude,
                Longitude = model.Longitude,
                SpeciesId = model.SpeciesId,
                Date = model.Date,
                AccountId = accountId
            };

            _context.Observations.Add(observation);

            _context.SaveChanges();

            return Ok();
        }

        [HttpPut]
        [Route("Update")]
        public IActionResult UpdateObservation([FromBody]ObservationModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var accountId = int.Parse(User.Claims.FirstOrDefault(c => c.Type == "id").Value);

            var observation = new Observation
            {
                Id = model.Id,
                Description = model.Description,
                Latitude = model.Latitude,
                Longitude = model.Longitude,
                SpeciesId = model.SpeciesId,
                Date = model.Date,
                AccountId = model.AccountId
            };

            _context.Entry(observation).State = EntityState.Modified;
            _context.SaveChanges();

            return Ok();
        }

        [HttpDelete]
        [Route("Delete")]
        public IActionResult DeleteObservation(int id)
        {
            var observation = _context.Observations.FirstOrDefault(o => o.Id == id);
            if(observation == null)
            {
                return BadRequest();
            }

            var accountId = int.Parse(User.Claims.FirstOrDefault(c => c.Type == "Id").Value);
            
            if(accountId != observation.AccountId)
            {
                return BadRequest("This account cannot delete this observation.");
            }

            _context.Entry(observation).State = EntityState.Deleted;
            _context.SaveChanges();

            return Ok();
        }

        [HttpGet]
        [Route("Observations")]
        public Observation[] Observations()
        {
            return _context.Observations/*.Include(o => o.Speacies)*/.Include(o => o.Account).ToArray();
        }
    }
}