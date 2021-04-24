using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Species.Database;
using Species.Database.Entities;

namespace Species.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderController : ControllerBase
    {
        public readonly SpeaciesContext _context;


        public OrderController(SpeaciesContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("Orders")]
        public Order[] Orders()
        {
            return _context.Orders.ToArray();
        }
    }
}