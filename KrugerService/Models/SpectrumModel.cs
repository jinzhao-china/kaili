﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KrugerService.Models
{
    public sealed class SpectrumModel
    {
        public float Inlet_LPA_Overall { get; set; }

        public Array Inlet_LpA_Spectrum { get; set; }

        public float Inlet_LWA_Overall { get; set; }

        public Array Inlet_LwA_Spectrum { get; set; }

        public float Inlet_LwLin_Overall { get;  set; }

        public Array Inlet_LwLin_Spectrum { get;  set; }

        public float Outlet_LPA_Overall { get;  set; }

        public Array Outlet_LpA_Spectrum { get;  set; }

        public float Outlet_LWA_Overall { get;  set; }

        public Array Outlet_LwA_Spectrum { get;  set; }

        public float Outlet_LwLin_Overall { get;  set; }

        public Array Outlet_LwLin_Spectrum { get;  set; }
    }
}
