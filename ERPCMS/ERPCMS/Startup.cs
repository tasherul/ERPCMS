using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ERPCMS.Startup))]
namespace ERPCMS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
