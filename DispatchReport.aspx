<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DispatchReport.aspx.cs" Inherits="DispatchReport" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        text-align: center;
    }
    .style9
    {
        font-family: "Lucida Calligraphy";
        font-weight: bold;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style8">
    <br />
    <span class="style9">Order Status&nbsp; :</span>&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700">
        <asp:ListItem>Pending</asp:ListItem>
        <asp:ListItem>Avaliable</asp:ListItem>
    </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
        Text="Show" />
</p>
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
<p>
</p>
<p>
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
    </CR:CrystalReportSource>
</p>
<p>
</p>
</asp:Content>

