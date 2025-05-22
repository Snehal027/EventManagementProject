<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Display" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 394px;
        }
        .style11
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 59px;
        }
        .style12
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 55px;
        }
        .style13
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 65px;
        }
        .style14
        {
            height: 69px;
        }
        .style16
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 59px;
                width: 355px;
        }
        .style17
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 55px;
                width: 355px;
        }
        .style18
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 65px;
                width: 355px;
        }
        .style19
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 69px;
                width: 355px;
        }
        .style20
        {
            border: 1px solid #000000;
            padding: 1px 4px;
            height: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style8" rowspan="7">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" 
                    style="text-align: center" Width="200px" />
            </td>
            <td class="style16">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" 
                    Text="Service Name :"></asp:Label>
            </td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblsna" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Categories Id :"></asp:Label>
            </td>
            <td class="style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblcid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Categories Name :"></asp:Label>
            </td>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblcna" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Charges :"></asp:Label>
            </td>
            <td class="style20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblchar" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Number Of Dayas :</td>
            <td class="style20">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Book Now" PostBackUrl="~/Book.aspx" 
                    
                    style="color: #FFFFFF; font-family: 'Lucida Calligraphy'; font-weight: 700; background-color: #000000" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Button" />
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

