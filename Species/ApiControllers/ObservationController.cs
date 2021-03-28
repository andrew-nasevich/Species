﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Species.Database;
using Species.Database.Entities;

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
        [Route("AddObservation")]
        public IActionResult AddObservation(float latitude, float longitude, string description, int speciesId)
        {
            if(longitude > 180)
            {
                longitude = (longitude + 180) % 360 - 180;
            }
            else if(longitude < -180)
            {
                longitude = (longitude - 180) % 360 + 180;
            }

            var observation = new Observation
            {
                Description = description,
                Latitude = latitude,
                Longitude = longitude,
                SpeciesId = speciesId
            };

            _context.Observations.Add(observation);

            _context.SaveChanges();

            return Ok();
        }
    }
}