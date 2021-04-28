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

        [HttpPost]
        [Route("Create")]
        public IActionResult Create([FromBody]OrderModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var order = new Order()
            {
                Name = model.Name,
                LatinName = model.LatinName,
                Description = model.Description,
                ClassId = model.ClassId,
            };

            _context.Orders.Add(order);
            _context.SaveChanges();

            order.Class = _context.Classes.FirstOrDefault(c => c.Id == order.ClassId);

            return new JsonResult(order);
        }

        [HttpPut]
        [Route("Update")]
        public IActionResult Update([FromBody]OrderModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var order = _context.Orders.FirstOrDefault(o => o.Id == model.Id);
            if (order == null)
            {
                return BadRequest();
            }

            order.Name = model.Name;
            order.LatinName = model.LatinName;
            order.Description = model.Description;
            order.ClassId = model.ClassId;

            _context.Entry(order).State = EntityState.Modified;
            _context.SaveChanges();

            return Ok();
        }

        [HttpDelete]
        [Route("Delete")]
        public IActionResult Delete(int id)
        {
            var order = _context.Orders.FirstOrDefault(s => s.Id == id);
            if (order == null)
            {
                return BadRequest();
            }

            _context.Entry(order).State = EntityState.Deleted;
            _context.SaveChanges();

            return Ok();
        }
    }
}