<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="LibraryManagementSystem.LibrarayPage.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <table>
        <tr>
            <td colspan="3" align="center">
                <h1>Welcome Admin Panel</h1>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnStudent" runat="server" Text="Show Panding Student" CssClass="adminApprovedButton" OnClick="btnStudent_Click" />
            </td>
            <td>
                <asp:Button ID="btnTeacher" runat="server" Text="Show Panding Teacher" CssClass="adminApprovedButton" OnClick="btnTeacher_Click" />
            </td>
            <td>
                <asp:Button ID="btnAddBook" runat="server" Text="Add Book" CssClass="adminApprovedButton" OnClick="btnAddBook_Click" />
            </td>
        </tr>
    </table>

    <table>
        <tr>
            <td>
                <asp:GridView ID="gridViewUniversity" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="gridViewUniversity_RowDeleting" DataKeyNames="StudentId">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField DeleteText="Approved" HeaderText="Approval" ShowDeleteButton="True" />
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
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="gridViewLibraray" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="LoginId" OnRowDeleting="gridViewLibraray_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField DeleteText="Approved" HeaderText="Approval" ShowDeleteButton="True" />
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
            </td>
        </tr>

    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridViewTeacher" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="TeacherId" OnRowDeleting="GridViewTeacher_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField DeleteText="Approved" HeaderText="Approval" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridViewTeacherLogin" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="TLoginId" OnRowDeleting="GridViewTeacherLogin_RowDeleting">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField DeleteText="Approved" HeaderText="Approval" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>

    <asp:Panel ID="PanelBook" runat="server">
        <table align="center" style="height: 300px">
            <tr>
                <td>
                    <asp:Label ID="lblBookName" runat="server" Text="Book Name:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBookName" runat="server" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAuthor" runat="server" Text="Author:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="lblPublication" runat="server" Text="Publication:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPublication" runat="server" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="lblSubject" runat="server" Text="Subject:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="lblCopy" runat="server" Text="Quantity:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="inputStyle" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnAdd" runat="server" Text="Add New Book" CssClass="btnStyleRegister" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
