using Kruger;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace RestAPIHost
{
    public class KrugerController : ApiController
    {
        [HttpPost]
        public Fan Select([FromBody]SelectInfoModel model)
        {
            Trace.Write(model.Volume);
            Fans fanList = KrugerUtil.Select();

            Fan f = fanList.Item(2);

            return f;
        }

    }
}
