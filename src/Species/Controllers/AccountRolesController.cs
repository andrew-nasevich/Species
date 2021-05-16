using Microsoft.AspNetCore.Mvc;

namespace Species.Controllers
{
    public class AccountRolesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}