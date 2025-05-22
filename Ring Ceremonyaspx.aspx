<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ring Ceremonyaspx.aspx.cs" Inherits="Ring_Ceremonyaspx" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" 
                    ImageUrl="~/Ring Ceremony img/Ring Ceremony 3.jpeg" Width="300px" 
                    PostBackUrl="~/Dimond Ring Ceremony.aspx" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="300px" 
                    ImageUrl="~/Ring Ceremony img/Ring Ceremony 5.jpg" Width="300px" 
                    PostBackUrl="~/Platinum Ring Ceremony.aspx" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="300px" 
                    ImageUrl="~/Ring Ceremony img/Ring Ceremony 1.jpeg" Width="300px" 
                    PostBackUrl="~/Golden Ring Ceremony.aspx" />
                <br />
                <br />
                <br />
            </td>
            <td>
                <br />
                <br />
                <asp:ImageButton ID="ImageButton6" runat="server" Height="300px" 
                    ImageUrl="~/Ring Ceremony img/Ring Ceremony 2.jpg" Width="300px" 
                    PostBackUrl="~/Silver Ring Ceremony.aspx" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Services.aspx" 
                    style="color: #000000; font-size: large">Back</asp:HyperLink>
                <br />
                <br />
                <br />
            </td>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

