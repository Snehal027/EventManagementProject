<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Designer Wedding.aspx.cs" Inherits="Designer_Wedding" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 461px;
            height: 332px;
            text-align: center;
        }
        .style19
        {
            height: 371px;
            width: 461px;
            text-align: center;
        }
        .style20
        {
            width: 492px;
            height: 332px;
            text-align: center;
        }
        .style21
        {
            width: 492px;
            height: 371px;
            text-align: center;
        }
        .style22
        {
            width: 1185px;
            height: 722px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style22" style="margin-right: 0px">
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" 
                    ImageUrl="~/Designer Wedding Img/wedding 4.jpg" onclick="ImageButton1_Click" 
                    style="border-style: none; margin-right: 0px; padding: 1px 4px; text-align: left;" 
                    Width="300px" PostBackUrl="~/Dimond Wedding.aspx" />
&nbsp;&nbsp;
            </td>
            <td class="style20">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="300px" 
                    ImageUrl="~/Designer Wedding Img/Wedding 2.jpeg" onclick="ImageButton2_Click" 
                    style="border-style: solid" Width="300px" 
                    PostBackUrl="~/Platinum Wedding.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style19">
&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" Height="300px" 
                    ImageUrl="~/Designer Wedding Img/Wedding 1.jpg" style="border-style: solid" 
                    Width="300px" PostBackUrl="~/Golden Wedding.aspx" />
                <br />
                <br />
                <br />
            </td>
            <td class="style21">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="300px" 
                    ImageUrl="~/Designer Wedding Img/Wedding 6.jpeg" onclick="ImageButton3_Click" 
                    style="border-style: solid" Width="300px" 
                    PostBackUrl="~/Silver Wedding.aspx" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Services.aspx" 
                    style="color: #000000; font-size: x-large">Back</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

