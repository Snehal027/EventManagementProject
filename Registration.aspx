<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            text-align: center;
        }
        .style9
        {
            text-align: center;
            font-family: "Lucida Calligraphy";
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style9">
        Registration</p>
    <p class="style8">
&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
    </p>
    <p class="style8">
        <asp:Label ID="Label2" runat="server" Text="User Name :" 
            style="font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p class="style8">
&nbsp;<asp:Label ID="Label3" runat="server" Text="Email Id :" 
            style="font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p class="style8">
        <asp:Label ID="Label4" runat="server" Text="Mobile Number :" 
            style="font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p class="style8">
&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Password :" 
            style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </p>
    <p class="style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
            style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
            style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" />
        &nbsp;</p>
    <p class="style8">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [RegistrastionTable]"></asp:SqlDataSource>
    </p>
</asp:Content>

