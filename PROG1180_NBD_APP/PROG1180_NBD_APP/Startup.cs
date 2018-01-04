using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PROG1180_NBD_APP.Startup))]
namespace PROG1180_NBD_APP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
