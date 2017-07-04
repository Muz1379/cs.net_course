using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODEL;
using BLL;
using FineUI;

namespace EmptyProjectNet45_FineUI.kc
{
    public partial class inventoryAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(!IsPostBack)
            {
                //审核和创建日期默认为当天，不可设置成未来
                dp_billTime.SelectedDate = DateTime.Now;
                dp_billTime.MaxDate = DateTime.Now;
                dp_invenDate.SelectedDate = DateTime.Now;
                dp_invenDate.MaxDate = DateTime.Now;
                //以下判断是否从正确路径访问页面
                if (Request.UrlReferrer == null || Request.UrlReferrer.LocalPath.ToString() != "/default.aspx")
                    Response.Redirect("~/login.aspx");
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            MODEL_kc_Inventory model = new MODEL.MODEL_kc_Inventory();
            BLL_inventory bll = new BLL_inventory();

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

           if(bll.Insert(model)>0)
            {
                Alert alert = new Alert();
                alert.Message = "添加成功";
                alert.IconUrl = "~/res/images/success.png";
                alert.Target = Target.Top;
                alert.Show();
                PageContext.RegisterStartupScript(ActiveWindow.GetHideRefreshReference());
            }
            else
            {
                Alert alert = new Alert();
                alert.Message = "添加失败";
                alert.IconUrl = "~/res/images/error_add.png";
                alert.Target = Target.Top;
                alert.Show();
            }
        }
    }
}