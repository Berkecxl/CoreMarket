using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CoreMarket.Model
{
    public class ProductLog
    {
        public string Action { get; set; }
        public string ProductName { get; set; }
        public int Count { get; set; }
        public decimal BoughtPrice { get; set; }
        public decimal SoldPrice { get; set; }
        public DateTime DateTime { get; set; }
    }
}