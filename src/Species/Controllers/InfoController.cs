using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Species.Controllers
{
    [AllowAnonymous]
    public class InfoController : Controller
    {
        public IActionResult ProtectionСategories()
        {
            return View();
        }
    }
}