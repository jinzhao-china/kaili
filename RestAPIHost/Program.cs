
using System;
using System.ServiceProcess;
using System.Threading;

namespace RestAPIHost
{
    class Program
    {
        private const string SERVICE_NAME = "REST API Server";
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(Program));

        static void Main(string[] args)
        {
            //带参启动运行服务
            if (args.Length > 0)
            {
                try
                {
                    ServiceBase[] serviceToRun = new ServiceBase[] { new WindowsService() };
                    ServiceBase.Run(serviceToRun);
                }
                catch (Exception ex)
                {
                }
            }
            //不带参启动配置程序
            else
            {
                String userName = System.Security.Principal.WindowsIdentity.GetCurrent().Name;
                String cmd = String.Format("netsh http add urlacl url={0}  user={1}", "http://+:60064/", userName);
                //grant permission
                ServiceHelper.RunCMD(cmd);

                Thread.Sleep(500);

                String appPath = AppDomain.CurrentDomain.BaseDirectory;
              
                String dllPath = String.Format("{0}\\com\\{1}", appPath,"Paramet.dll");
              
                log.Debug(dllPath);

                // regiest com dll into windows
                cmd = String.Format(@"%systemroot%\System32\regsvr32.exe /s {0}", dllPath);

                ServiceHelper.RunCMD(cmd);
                // StartLable:
                Console.WriteLine("请选择你要执行的操作——1：自动部署服务，2：安装服务，3：卸载服务，4：验证服务状态，5：退出");
                Console.WriteLine("————————————————————");
                ConsoleKey key = Console.ReadKey().Key;
                //ConsoleKey key = ConsoleKey.NumPad1;

                if (key == ConsoleKey.NumPad1 || key == ConsoleKey.D1)
                {
                    if (ServiceHelper.IsServiceExisted(SERVICE_NAME))
                    {
                        ServiceHelper.ConfigService(SERVICE_NAME, false);
                    }
                    if (!ServiceHelper.IsServiceExisted(SERVICE_NAME))
                    {
                        ServiceHelper.ConfigService(SERVICE_NAME, true);
                    }
                    ServiceHelper.StartService(SERVICE_NAME);
                    //goto StartLable;
                }
                else if (key == ConsoleKey.NumPad2 || key == ConsoleKey.D2)
                {
                    if (!ServiceHelper.IsServiceExisted(SERVICE_NAME))
                    {
                        ServiceHelper.ConfigService(SERVICE_NAME, true);
                    }
                    else
                    {
                        Console.WriteLine("\n服务已存在......");
                    }
                   // goto StartLable;
                }
                else if (key == ConsoleKey.NumPad3 || key == ConsoleKey.D3)
                {
                    if (ServiceHelper.IsServiceExisted(SERVICE_NAME))
                    {
                        ServiceHelper.ConfigService(SERVICE_NAME, false);
                    }
                    else
                    {
                        Console.WriteLine("\n服务不存在......");
                    }
                  //  goto StartLable;
                }
                else if (key == ConsoleKey.NumPad4 || key == ConsoleKey.D4)
                {
                    if (!ServiceHelper.IsServiceExisted(SERVICE_NAME))
                    {
                        Console.WriteLine("\n服务不存在......");
                    }
                    else
                    {
                        Console.WriteLine("\n服务状态：" + ServiceHelper.GetServiceStatus(SERVICE_NAME).ToString());
                    }
                  //  goto StartLable;
                }
                else if (key == ConsoleKey.NumPad5 || key == ConsoleKey.D5) { }
                else
                {
                    Console.WriteLine("\n请输入一个有效键！");
                    Console.WriteLine("————————————————————");
                  //  goto StartLable;
                }
            }
        }

        //static void Main(string[] args)
        //{
        //    Uri _baseAddress = new Uri("http://localhost:60064/");
        //    HttpSelfHostServer server = null;

        //    HttpSelfHostConfiguration config = new HttpSelfHostConfiguration(_baseAddress);

        //    config.Routes.MapHttpRoute(
        //        name: "ActionApi",
        //        routeTemplate: "api/{controller}/{action}/{id}",
        //        defaults: new { id = RouteParameter.Optional }
        //    );


        //    server = new HttpSelfHostServer(config);

        //    server.OpenAsync().Wait();
        //    Console.Read();
        //}

    }
}
