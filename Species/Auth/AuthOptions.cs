using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace Species.Auth
{
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