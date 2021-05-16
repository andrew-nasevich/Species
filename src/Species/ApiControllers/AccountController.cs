using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Mvc;
using Species.Database;
using Species.Database.Entities;
using Species.Models;

namespace Species.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        public readonly SpeaciesContext _context;


        public AccountController(SpeaciesContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("GetById")]
        public object GetById(int id)
        {
            var account = _context.Accounts.FirstOrDefault(a => a.Id == id);
            if(account == null)
            {
                return BadRequest();
            }

            var accountRoles = _context.AccountRoles.Where(r => r.AccountId == id).Select(r => r.RoleId).ToArray();

            var roles = _context.Roles.Where(r => accountRoles.Contains(r.Id)).Select(r => r.Name).ToArray();

            return new
            {
                id = account.Id,
                name = account.Name,
                surname = account.Surname,
                email = account.Email,
                roles
            };
        }

        [HttpGet]
        [Route("GetCurrentAccount")]
        public object GetCurrentAccount()
        {
            var claims = HttpContext.User.Claims.ToArray();
            var idClaim = claims.FirstOrDefault(c => c.Type == "id");

            if(idClaim == null)
            {
                return NotFound();
            }

            var id = int.Parse(idClaim.Value);
            var account = _context.Accounts.FirstOrDefault(a => a.Id == id);

            return FormRoles(account);
        }


        [HttpPost]
        [Route("Register")]
        public async Task<dynamic> Register([FromBody]RegisterModel account)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            account.Email = account.Email.Trim();
            account.Password = account.Password.Trim();

            if (account.Email == "" || account.Password == "")
            {
                return BadRequest("Invalid username or password.");
            }
            try
            {
                if (_context.Accounts.Any(a => a.Email == account.Email))
                {
                    return Forbid("User with such mail already exists.");
                }

                var acc = new Account
                {
                    Email = account.Email,
                    Hash = account.Password, // TODO: Add encripting
                    Name = account.Name,
                    Surname = account.Surname
                };
                _context.Accounts.Add(acc);

                _context.SaveChanges();

                await Authenticate(acc);

                return FormRoles(acc);
            }
            catch
            {
                return BadRequest();
            }
        }


        [HttpPost]
        [Route("Login")]
        public async Task<dynamic> Login(LoginModel account)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var hash = account.Password;
            var acc = _context.Accounts.FirstOrDefault(a => a.Email == account.Email && a.Hash == hash);

            if(acc == null)
            {
                return BadRequest("There is no account with such credentials.");
            }
            await Authenticate(acc);
            return FormRoles(acc);
        }

        [HttpGet]
        [Route("Logout")]
        public async Task<IActionResult> Logout()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);

            return Redirect("/Observation");
        }


        private async Task Authenticate(Account account)
        {
            var claims = new List<Claim>
            {
                new Claim("email", account.Email),
                new Claim("name", $"{account.Name} {account.Surname}"),
                new Claim("id", account.Id.ToString())
            };
            // создаем объект ClaimsIdentity
            var id = new ClaimsIdentity(claims, "ApplicationCookie", ClaimsIdentity.DefaultNameClaimType, ClaimsIdentity.DefaultRoleClaimType);
            // установка аутентификационных куки
            await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(id));
        }

        private object FormRoles(Account account)
        {
            var accountRoles = _context.AccountRoles.Where(r => r.AccountId == account.Id).Select(r => r.RoleId).ToArray();
            var roles = _context.Roles.Where(r => accountRoles.Contains(r.Id)).Select(r => r.Name).ToArray();
            return new JsonResult(new
            {
                id = account.Id,
                name = account.Name,
                surname = account.Surname,
                email = account.Email,
                roles
            });
        }
    }
}
