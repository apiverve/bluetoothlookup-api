using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BluetoothCompanyLookup
{
    /// <summary>
    /// Query options for the Bluetooth Company Lookup API
    /// </summary>
    public class BluetoothCompanyLookupQueryOptions
    {
        /// <summary>
        /// The Bluetooth SIG company identifier (decimal or hex with 0x prefix). For example, 76 or 0x4C for Apple.
        /// </summary>
        [JsonProperty("companyid")]
        public string Companyid { get; set; }
    }
}
