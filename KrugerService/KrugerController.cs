using Kruger;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace KrugerService
{
    public class KrugerController : ApiController
    {
        private static log4net.ILog log = log4net.LogManager.GetLogger(typeof(KrugerController));
        [HttpPost]
        public FanModel Select([FromBody]SelectInfoModel model)
        {
            FanModel fan = new FanModel();

            log.Debug(model);
            Fans fanList = KrugerUtil.Select();

            Fan f = fanList.Item(2);
            fan.DimA = f.DimA;

            return fan;
        }

    }
}
