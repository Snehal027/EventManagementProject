<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="Contact_Us" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            font-family: "Lucida Calligraphy";
            font-weight: bold;
            font-size: medium;
        }
        .style11
        {
            text-align: center;
            font-family: "Lucida Calligraphy";
            font-weight: bold;
            font-size: medium;
        }
        .style12
        {
            text-align: center;
            font-family: "Lucida Calligraphy";
            font-weight: bold;
            font-size: xx-large;
        }
        .style13
        {
            text-align: center;
            font-family: "Lucida Calligraphy";
            font-weight: bold;
            font-size: medium;
            color: #6666FF;
        }
        .style14
        {
            font-weight: normal;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                <p class="style12">
                    Contact Us</p>
    <p class="style13">
        Wanna write some beautiful memories on the page of your book of life?</p>
    <p class="style11">
        Ping Us On :- Or Write Us On</p>
    <p class="style11">
        Phone Number : <span class="style14">+91-7878545987</span></p>
    <p class="style11">
        Address : <span class="style14">1212 Barkat Nagar Pune-</span></p>
    <p class="style11">
        Contact E-mail : <span class="style14">&nbsp;<a 
            href="mailto:info@pictureperfectevents.in,pictureperfectevents01@gmail.com">info@pictureperfectevents.in,pictureperfectevents01@gmail.com</a></span></p>
    <p class="style10">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
            style="color: #FFFFFF; font-size: large; font-family: 'Lucida Calligraphy'; background-color: #000000" 
            Text="Back" />
    </p>

</asp:Content>


