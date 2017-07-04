using System;
using System.Collections.Generic;
using System.Text;

namespace MODEL
{
    /// <summary>
    /// 库存盘点子表
    /// </summary>
    public class MODEL_kc_InventorySub
    {
        public string ID { get; set; }
        public string InventoryID { get; set; }
        public string ProductNo { get; set; }
        public string ProductName { get; set; }
        public string Norm { get; set; }
        public string storageNo { get; set; }
        public string storageName { get; set; }
        public int AccountAmount { get; set; }
        public int InventoryAmount { get; set; }
        public int ProfitLossAmount { get; set; }
        public string Unit { get; set; }
        public string Description { get; set; }
    }
}
