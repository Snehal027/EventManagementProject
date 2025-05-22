<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Log_in" Title="Untitled Page" %>

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
        .style10
        {
            text-align: center;
            font-family: "Lucida Calligraphy";
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style8">
        <span class="style9">New User?????????? Register Here.......&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Register Now...." 
            onclick="Button1_Click" 
            style="color: #FFFFFF; font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'; background-color: #000000" />
    </p>
    <p class="style10">
        Already User .......Registered....</p>
    <p class="style10">
        Login Now</p>
    <p class="style8">
        <span class="style9">User Name :&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
            ID="TextBox1" runat="server" 
            style="font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'"></asp:TextBox>
    </p>
    <p class="style8">
        <span class="style9">Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><asp:TextBox 
            ID="TextBox2" runat="server" 
            style="font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'"></asp:TextBox>
    </p>
    <p class="style8">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Login" 
            style="color: #FFFFFF; font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'; background-color: #000000" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Reset" 
            style="color: #FFFFFF; font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'; background-color: #000000" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
</asp:Content>

