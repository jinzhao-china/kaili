using KrugerService;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace RestAPIHost
{
    partial class WindowsService : ServiceBase
    {
        public WindowsService()
        {
            InitializeComponent();
        }

        SelfServer server = null;
        protected override void OnStart(string[] args)
        {
            server = new SelfServer();
            server.Start();
        }

        protected override void OnStop()
        {
            if (server != null)
            {
                server.End();
            }
        }
    }
}
