<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" Title="Untitled Page" %>

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
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style8">
                    <br />
                    <span class="style9">Booking</span><br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="s_id" DataSourceID="SqlDataSource2" BackColor="#CCCCCC" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                        CellSpacing="2" ForeColor="Black">
                        <RowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="s_id" HeaderText="s_id" ReadOnly="True" 
                                SortExpression="s_id" />
                            <asp:BoundField DataField="c_nm" HeaderText="c_nm" SortExpression="c_nm" />
                            <asp:BoundField DataField="charges" HeaderText="charges" 
                                SortExpression="charges" />
                            <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                            <asp:BoundField DataField="Total_amount" HeaderText="Total_amount" 
                                SortExpression="Total_amount" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <EmptyDataTemplate>
                            s_id
                        </EmptyDataTemplate>
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [BookTable]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Calculate" 
                        style="color: #FFFFFF; font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'; background-color: #000000" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Total Amount" 
                        style="font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'"></asp:Label>
&nbsp;:&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Proceed To Chekout" 
                        style="color: #FFFFFF; font-size: large; font-weight: 700; font-family: 'Lucida Calligraphy'; background-color: #000000" />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        onselecting="SqlDataSource2_Selecting" 
                        SelectCommand="SELECT * FROM [BookTable]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

