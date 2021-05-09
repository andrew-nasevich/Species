using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Species.Controllers
{
    [AllowAnonymous]
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