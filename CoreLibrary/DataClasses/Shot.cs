/*************************************************
Initially Generated by SSoT.me - 2017
    EJ Alexandra - An odxml42 Tool
    This file will not be overwritten by default!
*************************************************/
using System;
using System.ComponentModel;
                        
namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                   
    
    public partial class Shot 
    {
        public Shot()
        {
            this.InitPoco();
        }

        public override String ToString()
        {
            return String.Format("Shot: {0}", this.Name);
        }
    }
}