﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Species.Controllers
{
    [Authorize]
    public class SpeciesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}