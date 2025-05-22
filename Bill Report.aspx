<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Bill Report.aspx.cs" Inherits="Bill_Report" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    Enter Order Number :&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="SHOW" onclick="Button1_Click" />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
<p>
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
    </CR:CrystalReportSource>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

