using BLL;
using FineUI;
using MODEL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmptyProjectNet45_FineUI.kc
{
    public partial class inventoryEdit : System.Web.UI.Page
    {
        private static string keyNum;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dp_billTime.MaxDate = DateTime.Now;
                dp_invenDate.MaxDate = DateTime.Now;

                //以下判断是否从正确路径访问页面
                if (Request.UrlReferrer == null)
                    Response.Redirect("~/login.aspx");

                keyNum = Request["id"];

                MODEL_kc_Inventory model = new MODEL.MODEL_kc_Inventory();
                BLL_inventory bll = new BLL_inventory();

                model = bll.GetModel("ID", keyNum);

                dp_billTime.SelectedDate = model.BillDate;
                dp_invenDate.SelectedDate = model.InventoryDate;

                tbx_billNo.Text = model.InventoryNo;
                tbx_factName.Text = model.FactoryName;
                tbx_factNo.Text = model.FactoryNo;
                dp_invenDate.SelectedDate = model.InventoryDate;
                dp_billTime.SelectedDate = model.BillDate;
                tbx_dutyName.Text = model.DutyName;
                tbx_dutyNo.Text = model.DutyNo;
                tbx_accName.Text = model.AssessorName;
                tbx_accNo.Text = model.AssessorNo;
                he_desc.Text = model.Description;
                ddl_AssState.SelectedValue = model.AssState;
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            MODEL_kc_Inventory model = new MODEL.MODEL_kc_Inventory();
            BLL_inventory bll = new BLL_inventory();
            model.ID = keyNum;
            model.InventoryNo = tbx_billNo.Text.ToString();
            model.FactoryName = tbx_factName.Text.ToString();
            model.FactoryNo = tbx_factNo.Text.ToString();
            model.InventoryDate = dp_invenDate.SelectedDate.Value;
            model.BillDate = dp_billTime.SelectedDate.Value;
            model.DutyName = tbx_dutyName.Text.ToString();
            model.DutyNo = tbx_dutyNo.Text.ToString();
            model.AssessorName = tbx_accName.Text.ToString();
            model.AssessorNo = tbx_accNo.Text.ToString();
            model.Description = he_desc.Text.ToString();
            model.AssState = ddl_AssState.SelectedValue.ToString();

            if (bll.Update(model) > 0)
            {
                Alert alert = new Alert();
                alert.Message = "修改成功";
                alert.IconUrl = "~/res/images/success.png";
                alert.Target = Target.Top;
                alert.Show();
                PageContext.RegisterStartupScript(ActiveWindow.GetHideRefreshReference());
            }
            else
            {
                Alert alert = new Alert();
                alert.Message = "修改失败";
                alert.IconUrl = "~/res/images/error_add.png";
                alert.Target = Target.Top;
                alert.Show();
            }
        }
    }
}