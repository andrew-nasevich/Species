using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Species.Database;
using Species.Database.Entities;

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
    }
}