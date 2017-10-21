<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LibraryManagementSystem.LibrarayPage.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <br />
    <br />
    <table align="center">
        <tr>
                <td >
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table>
            
            <tr>
                <td>
                    <asp:Label ID="lblRegister" runat="server" Text="Login As:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListLogin" runat="server" AutoPostBack="True" CssClass="inputStyle" OnSelectedIndexChanged="DropDownListLogin_SelectedIndexChanged">
                        <asp:ListItem Value=""> Select Your Status</asp:ListItem>
                        <asp:ListItem Value="tbl_student"> Student</asp:ListItem>
                        <asp:ListItem Value="tbl_teacher"> Teacher</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelStudent" runat="server">
        <table align="center" style="height: 250px">
            <tr>
                <td align="center">
                    <h3>Student Login</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" placeholder="User Name Or Email" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButtonStdent" runat="server" Text="Forgot Password ?" OnClick="LinkButtonStdent_Click"></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btnStyleAdminLogin" OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="PanelTeacher" runat="server">
        <table align="center" style="height: 250px">
            <tr>
                <td align="center">
                    <h3>Teacher Login</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtTeacherName" runat="server" placeholder="User Name Or Email" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtTeacherPass" runat="server" TextMode="Password" placeholder="Password" CssClass="inputStyle"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="TeacherForgot" runat="server" Text="Forgot Password ?" OnClick="TeacherForgot_Click"></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnLoginTeacher" runat="server" Text="Login" CssClass="btnStyleAdminLogin" OnClick="btnLoginTeacher_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="PanelStudentForgotPassword" runat="server">
        <table align="center" style="height: 250px">
            <tr>
                <td align="center">
                    <h3>Change Password</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtStudentUser" runat="server" CssClass="inputStyle" placeholder="Student User Name "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtStuNewPass" TextMode="Password" runat="server" CssClass="inputStyle" placeholder="New Password "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnStudentForget" runat="server" Text="Change Password" CssClass="btnStyleAdminLogin" OnClick="btnStudentForget_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="PanelTeacherForgotPassword" runat="server">
        <table align="center" style="height: 250px">
            <tr>
                <td align="center">
                    <h3>Change Password</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtTeacherUser" runat="server" CssClass="inputStyle" placeholder=" Teacher User Name "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtTeacherNew" TextMode="Password" runat="server" CssClass="inputStyle" placeholder="New Password "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnTeacherPass" runat="server" Text="Change Password" CssClass="btnStyleAdminLogin" OnClick="btnTeacherPass_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
