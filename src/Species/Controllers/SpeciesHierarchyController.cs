using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Species.Controllers
{
    [Authorize]
    public class SpeciesHierarchyController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}