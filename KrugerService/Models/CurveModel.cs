using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KrugerService.Models
{
    public sealed class CurveModel
    {
        public Array VolumePoints { get; set; }

        public Array PressurePoints { get; set; }

        public Array PowerPoints { get; set; }
    }
}
