<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement.Master" AutoEventWireup="true" CodeBehind="BookCollection.aspx.cs" Inherits="LibraryManagementSystem.LibrarayPage.BookCollection" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <table style="width:550px; margin-top:50px">
        <tr>
            <td>
                <asp:Label ID="labDate" runat="server" Font-Size="20px" ForeColor="red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBoxSearch" runat="server" placeholder="Search..........." CssClass="searchText"></asp:TextBox>
                <asp:Button ID="ButtonSearch" runat="server" Text="Search" Height="40px" Width="150px" OnClick="ButtonSearch_Click"/>
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridViewBook" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="640px" DataKeyNames="BookId" OnRowDeleting="GridViewBook_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BookId" HeaderText="SL" />
            <asp:BoundField DataField="BookName" HeaderText="Book Name" />
            <asp:BoundField DataField="Author" HeaderText="Author" />
            <asp:BoundField DataField="Publication" HeaderText="Publication" />
            <asp:CommandField DeleteText="Borrow" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

</asp:Content>
