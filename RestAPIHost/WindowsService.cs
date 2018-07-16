using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.SelfHost;

namespace RestAPIHost
{
    partial class WindowsService : ServiceBase
    {
        public WindowsService()
        {
            InitializeComponent();
        }

        static readonly Uri _baseAddress = new Uri("http://localhost:60064/");
        HttpSelfHostServer server = null;
        protected override void OnStart(string[] args)
        {
            // TODO: 在此处添加代码以启动服务。
            //System.IO.File.AppendAllText(String.Format("{0}/{1}", AppDomain.CurrentDomain.BaseDirectory, "Log.txt"), " Service Start :" + DateTime.Now.ToString());
            HttpSelfHostConfiguration config = new HttpSelfHostConfiguration(_baseAddress);

            config.Routes.MapHttpRoute(
                name: "ActionApi",
                routeTemplate: "api/{controller}/{action}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );


            server = new HttpSelfHostServer(config);


            server.OpenAsync().Wait();
        }

        protected override void OnStop()
        {
            if (server != null)
            {
                server.CloseAsync().Wait();
            }

            // TODO: 在此处添加代码以执行停止服务所需的关闭操作。
            // System.IO.File.AppendAllText(String.Format("{0}/{1}", AppDomain.CurrentDomain.BaseDirectory, "Log.txt"), " Service Stop :" + DateTime.Now.ToString());
        }
    }
}
