﻿using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Species.Database;

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
    }
}