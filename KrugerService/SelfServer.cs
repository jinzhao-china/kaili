using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.SelfHost;

namespace KrugerService
{

    public class SelfServer
    {
        static readonly Uri _baseAddress = new Uri("http://localhost:60064/");
        HttpSelfHostServer server = null;
        public void Start()
        {
            HttpSelfHostConfiguration config = new HttpSelfHostConfiguration(_baseAddress);

            config.Routes.MapHttpRoute(
                name: "ActionApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );


            server = new HttpSelfHostServer(config);


            server.OpenAsync().Wait();
        }

        public void End()
        {
            if (server != null)
            {
                server.CloseAsync().Wait();
            }
        }
    }
}
