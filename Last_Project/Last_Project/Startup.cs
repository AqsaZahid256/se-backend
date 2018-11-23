using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Last_Project.Startup))]
namespace Last_Project
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
