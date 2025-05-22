<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="Bill" Title="Untitled Page" %>

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
        font-size: xx-large;
    }
    .style10
    {
        font-family: "Lucida Calligraphy";
        font-weight: bold;
        font-size: large;
    }
    .style12
    {
        text-align: center;
        font-size: large;
        font-family: "Lucida Calligraphy";
    }
    .style13
    {
        font-size: large;
    }
    .style14
    {
        font-family: "Lucida Calligraphy";
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style9">
        Check_Out</p>
    <p class="style8">
        <span class="style10">Welcome</span>&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label" 
            style="font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: large"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Billing_address]"></asp:SqlDataSource>
    </p>
    <p class="style8">
        <span class="style10">Total Amount :&nbsp;</span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" 
            style="font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" 
            style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700">Update Cart</asp:HyperLink>
    </p>
    <p class="style9">
        Billing Address</p>
    <p class="style8">
        <span class="style10">Name :
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" 
            style="font-size: large; font-family: 'Lucida Calligraphy'; font-weight: 700"></asp:TextBox>
    </p>
    <p class="style12">
        <b>Address :&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="228px" 
            style="font-family: 'Lucida Calligraphy'; font-weight: 700; font-size: x-large"></asp:TextBox>
                        </b>
                        </p>
                        <p class="style12">
                            <b>City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox11" runat="server" 
                                style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:TextBox>
                            </b>
                        </p>
                        <p class="style12">
                            <b>State :&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox10" runat="server" 
                                style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:TextBox>
                            </b>
                        </p>
                        <p class="style8">
                            <b><span class="style13"><span class="style14">Country:&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox9" runat="server" 
                                style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:TextBox>
                            </span></span></b>
                        </p>
                        <p class="style12">
                            <b>Mobile No :         <asp:TextBox ID="TextBox7" runat="server" 
                                style="font-weight: 700; font-size: large; font-family: 'Lucida Calligraphy'"></asp:TextBox>
                            </b>
    </p>
    <p class="style12">
        <b>Email Id :&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" 
            style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:TextBox>
        </b>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Book Now" onclick="Button1_Click" 
            
            style="text-align: center; font-family: 'Lucida Calligraphy'; font-size: medium; font-weight: 700; color: #FFFFFF; background-color: #000000;" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
            style="font-weight: 700; font-size: medium; font-family: 'Lucida Calligraphy'; color: #FFFFFF; background-color: #000000" />
    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="orderno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="orderno" HeaderText="orderno" ReadOnly="True" 
                    SortExpression="orderno" />
                <asp:BoundField DataField="User_id" HeaderText="User_id" 
                    SortExpression="User_id" />
                <asp:BoundField DataField="User_nm" HeaderText="User_nm" 
                    SortExpression="User_nm" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:BoundField DataField="Mobile_no" HeaderText="Mobile_no" 
                    SortExpression="Mobile_no" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Email_id" HeaderText="Email_id" 
                    SortExpression="Email_id" />
            </Columns>
        </asp:GridView>
    <p class="style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
</asp:Content>

