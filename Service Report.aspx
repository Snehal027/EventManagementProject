<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Service Report.aspx.cs" Inherits="Service_Report" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="true" oninit="CrystalReportViewer1_Init" 
        ReportSourceID="CrystalReportSource1" />
<br />
<br />
<br />
<CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
</CR:CrystalReportSource>
<br />
<br />
<br />
</asp:Content>

