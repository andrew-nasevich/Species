using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Species.Controllers
{
    [Authorize]
    public class ObservationController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult AddObservation()
        {
            return View();
        }
    }
}