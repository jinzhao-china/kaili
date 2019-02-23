using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Unistall
{
    class Program
    {
        private const string SERVICE_NAME = "REST API Server";
        static void Main(string[] args)
        {
            if (ServiceHelper.IsServiceExisted(SERVICE_NAME))
            {
                ServiceHelper.ConfigService(SERVICE_NAME, false);
            }
            else
            {
                Console.WriteLine("\n服务不存在......");
            }
        }
    }
}
