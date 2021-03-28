using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace Species.Auth
{
    public class JwtTokenConfig
    {
        public string Secret { get; set; }
        public string Issuer { get; set; }
        public string Audience { get; set; }
        public int AccessTokenExpiration { get; set; }
        public int RefreshTokenExpiration { get; set; }

        public SymmetricSecurityKey GetSymmetricSecurityKey()
        {
            return new SymmetricSecurityKey(Encoding.ASCII.GetBytes(Secret));
        }
    }


    public static class AuthOptions
    {
        public const string ISSUER = "Species";
        public const string AUDIENCE = "SpeciesClient";
        public const string KEY = "Species_Key";
        public const int LIFETIME_IN_MINUTES = 60;

        public static SymmetricSecurityKey GetSymmetricSecurityKey()
        {
            return new SymmetricSecurityKey(Encoding.ASCII.GetBytes(KEY));
        }
    }
}