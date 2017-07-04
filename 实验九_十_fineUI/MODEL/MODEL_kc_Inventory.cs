using System;
using System.Collections.Generic;
using System.Text;

namespace MODEL
{
    public class MODEL_kc_Inventory
    {
        public string ID { get; set; }
        public string InventoryNo { get; set; }
        public string FactoryNo { get; set; }
        public string FactoryName { get; set; }
        public DateTime InventoryDate { get; set; }
        public DateTime BillDate { get; set; }
        public string DutyNo { get; set; }
        public string DutyName { get; set; }
        public string AssessorNo { get; set; }
        public string AssessorName { get; set; }
        public string AssState { get; set; }
        public string Description { get; set; }
    }
}
