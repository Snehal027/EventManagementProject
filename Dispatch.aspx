<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Dispatch.aspx.cs" Inherits="Dispatch" Title="Untitled Page" %>

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
        font-size: x-large;
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
            font-family: "Lucida Calligraphy";
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style9">
    <strong>Dispatch Order</strong></p>
<p class="style8">
    <span class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Order No :&nbsp; </span>&nbsp;<asp:TextBox ID="TextBox1" runat="server" 
        style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" 
        style="font-weight: 700; font-size: large; font-family: 'Lucida Calligraphy'; color: #FFFFFF; background-color: #000000" 
        Text="Show Data" onclick="Button1_Click" />
</p>
<p class="style8">
    <span class="style10">Order Date : </span>&nbsp;<asp:TextBox 
        ID="TextBox2" runat="server" 
        style="font-weight: 700; font-size: large; font-family: 'Lucida Calligraphy'"></asp:TextBox>
</p>
<p class="style8">
    <span class="style10">User Id : </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" 
        style="font-size: large; font-family: 'Lucida Calligraphy'; font-weight: 700"></asp:TextBox>
</p>
<p class="style8">
    <span class="style10">Order Status :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    &nbsp;<asp:DropDownList 
        ID="DropDownList1" runat="server" 
        style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700">
        <asp:ListItem>Available</asp:ListItem>
        <asp:ListItem>Pendind</asp:ListItem>
    </asp:DropDownList>
</p>
    <p class="style12">
        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Service Provided Date :&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" 
            style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:TextBox>
&nbsp; </b>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="font-family: 'Lucida Calligraphy'; font-size: small; font-weight: 700; color: #FFFFFF; background-color: #000000" 
            Text="Selected Delivered Date" />
</p>
<p class="style8">
    <span class="style10">Total Amount : </span>&nbsp;<asp:TextBox ID="TextBox4" 
        runat="server" 
        style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700"></asp:TextBox>
</p>
<p class="style8">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" 
        style="font-family: 'Lucida Calligraphy'; font-size: large; font-weight: 700; color: #FFFFFF; background-color: #000000" 
        Text="Update" onclick="Button2_Click" />
</p>
    <p class="style8">
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Order_master]"></asp:SqlDataSource>
</p>
<p class="style8">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="orderno">
        <Columns>
            <asp:BoundField DataField="orderno" HeaderText="orderno" 
                SortExpression="orderno" ReadOnly="True" />
            <asp:BoundField DataField="orderdate" HeaderText="orderdate" 
                SortExpression="orderdate" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" 
                SortExpression="user_id" />
            <asp:BoundField DataField="total_amount" HeaderText="total_amount" 
                SortExpression="total_amount" />
            <asp:BoundField DataField="order_stu" HeaderText="order_stu" 
                SortExpression="order_stu" />
            <asp:BoundField DataField="del_date" HeaderText="del_date" 
                SortExpression="del_date" />
        </Columns>
    </asp:GridView>
</p>
<p class="style8">
    &nbsp;</p>
<p class="style8">
    &nbsp;</p>
</asp:Content>

