using System;
using System.Web.Http;
using System.Web.Http.SelfHost;

namespace KrugerService
{
    public class SelfServer
    {
        static Uri _baseAddress = new Uri("http://localhost:60064/");
        HttpSelfHostServer server = null;
        public void Start()
        {
            String baseUrl = System.Configuration.ConfigurationSettings.AppSettings["BaseUrl"];
            String port = System.Configuration.ConfigurationSettings.AppSettings["Port"];
            String configUrl = String.Format("{0}:{1}", baseUrl, port);
            if (!String.IsNullOrEmpty(baseUrl) && !String.IsNullOrEmpty(port))
            {
               _baseAddress = new Uri(configUrl);
            }
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
