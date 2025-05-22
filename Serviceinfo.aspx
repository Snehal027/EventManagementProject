<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Serviceinfo.aspx.cs" Inherits="Serviceinfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            text-align: center;
            height: 74px;
        }
        .style13
        {
            height: 43px;
        }
        .style15
        {
            height: 58px;
        }
        .style16
        {
            height: 72px;
        }
        .style17
        {
            height: 63px;
            width: 638px;
        }
        .style21
        {
            height: 43px;
            width: 638px;
        }
        .style23
        {
            height: 63px;
        }
        .style24
        {
            height: 50px;
            width: 638px;
        }
        .style25
        {
            height: 50px;
        }
        .style26
        {
            height: 47px;
            width: 638px;
        }
        .style27
        {
            height: 47px;
        }
        .style28
        {
            height: 48px;
            width: 638px;
        }
        .style29
        {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" class="style8">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Service Information" 
                    style="font-size: x-large; font-style: italic; font-family: 'Times New Roman', Times, serif; text-align: left"></asp:Label>
                </strong>&nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Service Id" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; text-align: center"></asp:Label>
                </strong>&nbsp;</td>
            <td class="style23">
                <asp:TextBox ID="txtsid" runat="server" style="text-align: left"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btsearch" runat="server" Text="Search" onclick="btsearch_Click" 
                    style="color: #FFFFFF; background-color: #000000" />
            </td>
        </tr>
        <tr>
            <td class="style24">
&nbsp;&nbsp;&nbsp;
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Service Name" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; text-align: center"></asp:Label>
                </strong>
            </td>
            <td class="style25">
                <asp:DropDownList ID="ddlsna" runat="server" style="text-align: left">
                    <asp:ListItem>Designer Wedding</asp:ListItem>
                    <asp:ListItem>Ring Ceremony</asp:ListItem>
                    <asp:ListItem>Corporate Event</asp:ListItem>
                    <asp:ListItem>Birthday Party</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style26">
&nbsp;&nbsp;&nbsp;
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Categorise Id" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; text-align: center"></asp:Label>
                </strong>
            </td>
            <td class="style27">
                <asp:TextBox ID="txtcid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
&nbsp;&nbsp;&nbsp;
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Categorise Name" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif"></asp:Label>
                </strong>
            </td>
            <td class="style29">
                <asp:TextBox ID="txtcna" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
&nbsp;&nbsp;&nbsp;
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Charges" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; text-align: center"></asp:Label>
                </strong>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtch" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Upload Image" 
                    style="font-size: large; font-family: 'Times New Roman', Times, serif; text-align: center"></asp:Label>
                </strong>&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style13">
                <asp:FileUpload ID="fui" runat="server" />
&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnew" runat="server" onclick="btnew_Click" Text="New" 
                    style="color: #FFFFFF; background-color: #000000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btsave" runat="server" onclick="btsave_Click" Text="Save" 
                    style="color: #FFFFFF; font-weight: 700; font-family: 'Times New Roman', Times, serif; background-color: #000000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btupdate" runat="server" Text="Update" onclick="btupdate_Click" 
                    style="color: #FFFFFF; background-color: #000000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btdelete" runat="server" Text="Delete" onclick="btdelete_Click" 
                    style="color: #FFFFFF; background-color: #000000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btclear" runat="server" onclick="btclear_Click" Text="Clear" 
                    style="color: #FFFFFF; background-color: #000000" />
&nbsp;
                </td>
        </tr>
        <tr>
            <td colspan="2" class="style16">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Service_master]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

