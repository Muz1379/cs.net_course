<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="inventoryAdd.aspx.cs" Inherits="EmptyProjectNet45_FineUI.kc.inventoryAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="formMain" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="RegionPanel1" runat="server"></f:PageManager>
        <f:Form runat="server">
            <Items>
                <f:GroupPanel Layout="Anchor" Title="盘点单" runat="server">
                    <Items>
                        <f:Panel ID="billNo" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0;" runat="server">
                            <Items>
                                <f:Label runat="server" ShowRedStar="true" Label="盘点单号"></f:Label>
                                <f:TextBox ID="tbx_billNo" ShowLabel="false" CssClass="marginr" Required="true" ShowRedStar="true" BoxFlex="2" runat="server">
                                </f:TextBox>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel10" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:DatePicker runat="server" ID="dp_invenDate" Label="盘点日期" DateFormatString="yyyy-MM-dd" EmptyText="请选择日期" Required="true" ShowRedStar="true" ></f:DatePicker>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:GroupPanel>
                <f:GroupPanel Layout="Anchor" Title="工厂信息" runat="server">
                    <Items>
                        <f:Panel ID="Panel2" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:TextBox ID="tbx_factName" Required="true" ShowRedStar="true" Label="名称"
                                    RegexMessage="请输入正确的名称！" BoxFlex="1" runat="server">
                                </f:TextBox>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel1" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:TextBox ID="tbx_factNo" Required="true" ShowRedStar="true" Label="编号" BoxFlex="1" runat="server">
                                </f:TextBox>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:GroupPanel>

                <f:GroupPanel Layout="Anchor" Title="审核" runat="server">
                    <Items>
                        <f:Panel ID="Panel4" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:DatePicker runat="server" ID="dp_billTime" Label="审核日期" DateFormatString="yyyy-MM-dd" EmptyText="请选择日期"></f:DatePicker>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:Label ID="lbl_acc" runat="server" Text="审核:" />
                                <f:DropDownList runat="server" ID="ddl_AssState" Margin="0 0 0 75px">
                                    <f:ListItem Text="通过" Value="通过" Selected="true" />
                                    <f:ListItem Text="拒绝" Value="拒绝" />
                                    <f:ListItem Text="存疑" Value="存疑" />
                                </f:DropDownList>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:GroupPanel>

                <f:GroupPanel Layout="Anchor" Title="责任人信息" runat="server">
                    <Items>
                        <f:Panel ID="Panel5" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:TextBox ID="tbx_dutyName" Required="true" ShowRedStar="true" Label="姓名"
                                    RegexMessage="请输入正确的名称！" BoxFlex="1" runat="server">
                                </f:TextBox>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel6" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:TextBox ID="tbx_dutyNo" Required="true" ShowRedStar="true" Label="编号" BoxFlex="1" runat="server">
                                </f:TextBox>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:GroupPanel>

                <f:GroupPanel Layout="Anchor" Title="审核人信息" runat="server">
                    <Items>
                        <f:Panel ID="Panel7" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:TextBox ID="tbx_accName" Required="true" ShowRedStar="true" Label="姓名"
                                    RegexMessage="请输入正确的名称！" BoxFlex="1" runat="server">
                                </f:TextBox>
                            </Items>
                        </f:Panel>
                        <f:Panel ID="Panel8" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:TextBox ID="tbx_accNo" Required="true" ShowRedStar="true" Label="编号" BoxFlex="1" runat="server">
                                </f:TextBox>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:GroupPanel>

                <f:GroupPanel Layout="Anchor" Title="备注" runat="server">
                    <Items>
                        <f:Panel ID="Panel9" Layout="HBox" BoxConfigAlign="Stretch" CssClass="formitem" ShowHeader="false" ShowBorder="false" Margin="0 0 5px 0 ;" runat="server">
                            <Items>
                                <f:HtmlEditor runat="server" ID="he_desc" Height="200px" Width="615px"></f:HtmlEditor>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:GroupPanel>

            </Items>
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" ToolbarAlign="Right" Position="Bottom">
                    <Items>
                        <f:Button ID="btn_submit" Text="提交" ValidateForms="formMain" ValidateMessageBox="false" runat="server"
                            OnClick="btn_submit_Click">
                        </f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>

        </f:Form>
    </form>
</body>
</html>
