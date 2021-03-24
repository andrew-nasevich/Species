using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using Species.Auth;
using Species.Database;
using Species.Database.Entities;
using Species.Models;

namespace Species.ApiControllers
{
    //[Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        public readonly SpeaciesContext _context;


        public AccountController(SpeaciesContext context)
        {
            _context = context;
        }

        [HttpPost]
        [Route("API/Account/Register")]
        public ActionResult<string> Registry([FromBody]AccountModel account)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            account.Mail = account.Mail.Trim();
            account.Password = account.Password.Trim();

            if (account.Mail != "" && account.Password != "")
            {
                try
                {
                    if (_context.Accounts.Any(a => a.Mail == account.Mail))
                    {
                        return Forbid("User with such mail already exists.");
                    }

                    var acc = new Account
                    {
                        Mail = account.Mail,
                        Hash = account.Password, // TODO: Add encripting
                        Name = account.Name,
                        Surname = account.Surname
                    };
                    _context.Accounts.Add(acc);

                    _context.SaveChanges();

                    return Token(acc.Mail, null, acc.Hash);
                }
                catch
                {
                    return BadRequest();
                }
            }

            return BadRequest("Invalid username or password.");
        }

        [HttpGet]
        [Route("API/Account/Token")]
        public ActionResult<string> Token(string mail, string password, string hash = null)
        {
            mail = mail?.Trim();
            hash = hash ?? password;
            var account = _context.Accounts.FirstOrDefault(u => u.Mail == mail && u.Hash == hash);

            if (account == null)
            {
                return BadRequest("Invalid username or password.");
            }

            var claims = new List<Claim>
            {
                new Claim(ClaimsIdentity.DefaultNameClaimType, account.Mail)
            };

            var now = DateTime.UtcNow;
            var jwt = new JwtSecurityToken(
                    issuer: AuthOptions.ISSUER,
                    audience: AuthOptions.AUDIENCE,
                    notBefore: now,
                    claims: claims,
                    expires: now.Add(TimeSpan.FromMinutes(AuthOptions.LIFETIME_IN_MINUTES)),
                    signingCredentials: new SigningCredentials(AuthOptions.GetSymmetricSecurityKey(), SecurityAlgorithms.HmacSha256));
            var encodedJwt = new JwtSecurityTokenHandler().WriteToken(jwt);

            return encodedJwt;
        }
    }
}
