<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" Title="Untitled Page" %>

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
        font-size: xx-large;
        font-weight: bold;
    }
    .style10
    {
        text-align: center;
        font-family: "Lucida Calligraphy";
        font-size: x-large;
        font-weight: bold;
    }
    .style11
    {
        font-family: "Lucida Calligraphy";
        font-size: large;
        font-weight: bold;
    }
    .style13
    {
        text-align: center;
        font-family: "Lucida Calligraphy";
        font-size: large;
    }
    .style14
    {
        text-align: center;
        font-family: "Lucida Calligraphy";
        font-size: large;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style9">
        Invoice</p>
    <p class="style10">
        Bill Information</p>
    <p class="style8">
        <span class="style11">Billing Number :&nbsp;&nbsp;
        </span>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="font-size: large; font-family: 'Lucida Calligraphy'; font-weight: 700"></asp:TextBox>
&nbsp;
    </p>
    <p class="style13">
        <b>Email Id :&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </b>
    </p>
    <p class="style13">
        <b>Name :&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </b>
    </p>
    <p class="style10">
        Shipping Address</p>
    <p class="style13">
        <b>Address :&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </b>
    </p>
    <p class="style13">
        <b>City :&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </b>
    </p>
    <p class="style13">
        <b>State :&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </b>
    </p>
    <p class="style13">
        <b>Country :&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </b>
                        </p>
                        <p class="style8">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>
                        </p>
                        <p class="style8">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="orderno" HeaderText="orderno" 
                                        SortExpression="orderno" />
                                    <asp:BoundField DataField="s_id" HeaderText="s_id" SortExpression="s_id" />
                                    <asp:BoundField DataField="c_nm" HeaderText="c_nm" SortExpression="c_nm" />
                                    <asp:BoundField DataField="charges" HeaderText="charges" 
                                        SortExpression="charges" />
                                    <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                                    <asp:BoundField DataField="Total_amount" HeaderText="Total_amount" 
                                        SortExpression="Total_amount" />
                                </Columns>
                            </asp:GridView>
                        </p>
                        <p class="style13">
                            <b>Total Amount :&nbsp;&nbsp;&nbsp;         <asp:TextBox ID="TextBox2" 
                                runat="server" 
                                style="font-size: large; font-family: 'Lucida Calligraphy'; font-weight: 700"></asp:TextBox>
                            </b>
    </p>
    <p class="style14">
        Payment Method :&nbsp; Cash On Delivery</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Payment Now" 
            style="font-size: medium; font-weight: 700; font-family: 'Lucida Calligraphy'; color: #FFFFFF; background-color: #000000" />
    </p>
    <p class="style8">
        &nbsp;</p>
</asp:Content>

