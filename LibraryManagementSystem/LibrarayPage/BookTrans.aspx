<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement.Master" AutoEventWireup="true" CodeBehind="BookTrans.aspx.cs" Inherits="LibraryManagementSystem.LibrarayPage.BookTrans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br />
    <br />
    <h1>Book Transaction Details</h1>
    <asp:GridView ID="GridViewBookTrans" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="700px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Name" />
            <asp:BoundField DataField="Semester" HeaderText="Semester" />
            <asp:BoundField DataField="Section" HeaderText="Section" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" />
            <asp:BoundField DataField="Publication" HeaderText="Publication" />
            <asp:BoundField DataField="Author" HeaderText="Author" />
            <asp:BoundField DataField="IssuDate" HeaderText="IssuDate" />
            <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
