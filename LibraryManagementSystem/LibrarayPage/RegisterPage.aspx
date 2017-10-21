<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="LibraryManagementSystem.LibrarayPage.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="con1">
        <asp:Label ID="lblMessafe" runat="server" ForeColor="Red"></asp:Label>
        <table align="center">
            <tr>
                <td>
                    <asp:RadioButton ID="RadioButtonUni" runat="server" Text="Student Register" GroupName="reg" AutoPostBack="true" Font-Size="16px" Font-Bold="true"/>
                </td>
                 <td>
                     <asp:RadioButton ID="RadioButtonLib" runat="server" Text="Libraray Register" GroupName="reg"  AutoPostBack="true" Font-Size="16px" Font-Bold="true"/>
                </td>
            </tr>
        </table>
        <asp:Panel ID="PanelUniRegister" runat="server">
          <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblRegister" runat="server" Text="Register As:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListRegister" runat="server" OnSelectedIndexChanged="DropDownListRegister_SelectedIndexChanged" AutoPostBack="True" CssClass="inputStyle">
                        <asp:ListItem Value=""> Select Your Status</asp:ListItem>
                        <asp:ListItem Value="tbl_student"> Student</asp:ListItem>
                        <asp:ListItem Value="tbl_teacher"> Teacher</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        </asp:Panel>      
        <asp:Panel ID="PanelUniStudent" runat="server">
            <table align="center" style="height:300px">
                <tr>
                    <td>
                        <asp:Label ID="lblRegisterNo" runat="server" Text="Register No:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRegisterNo" runat="server" CssClass="inputStyle" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBranch" runat="server" Text="Branch:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBranch" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSection" runat="server" Text="Section:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSection" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSemester" runat="server" Text="Semester:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSemester" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblYear" runat="server" Text="Year:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtYear" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnUniStudent" runat="server" Text="Register" CssClass="btnStyleRegister" OnClick="btnUniStudent_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="PanelUniTeacher" runat="server">
            <table align="center" style="height:300px">
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Register Name:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDes" runat="server" Text="Designation:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDes" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTeacherBranch" runat="server" Text="Branch:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTeacherBranch" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblContact" runat="server" Text="Contact Number:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContact" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLecture" runat="server" Text="Lectures:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLecture" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="btnUniTeacher" runat="server" Text="Register" CssClass="btnStyleRegister" OnClick="btnUniTeacher_Click"/>
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="PanelLibRegister" runat="server">
          <table align="center">
            <tr>
                <td>
                    <asp:Label ID="lblLibReg" runat="server" Text="Register As:" CssClass="inputStyle"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListLibReg" runat="server" CssClass="inputStyle" AutoPostBack="True" OnSelectedIndexChanged="DropDownListLibReg_SelectedIndexChanged">
                        <asp:ListItem Value=""> Select Your Status</asp:ListItem>
                        <asp:ListItem Value="tbl_student"> Student</asp:ListItem>
                        <asp:ListItem Value="tbl_teacher"> Teacher</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        </asp:Panel>
        <asp:Panel ID="PanelLibStudent" runat="server">
            <table align="center" style="height:200px">
                <tr>
                    <td>
                        <asp:Label ID="lblStudentID" runat="server" Text="Student ID:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStudentID" runat="server" CssClass="inputStyle" TextMode="Number"></asp:TextBox>
                     
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStudentUserName" runat="server" Text="User Name:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStudentUserName" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblStudentPassword" runat="server" Text="Password" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStudentPassword" runat="server" TextMode="Password" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblNumBook" runat="server" Text="Number Of Books:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNumBook" runat="server" TextMode="Number" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnLibStudentRegister" runat="server" Text="Register" CssClass="btnStyleRegister" OnClick="btnLibStudentRegister_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="PanelLibTeacher" runat="server">
            <table align="center" style="height:150px">
                <tr>
                    <td>
                        <asp:Label ID="lblTeacherId" runat="server" Text="Teacher ID:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLibTeacherId" runat="server" CssClass="inputStyle" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTeacherUser" runat="server" Text="User Name:" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTeacherUser" runat="server" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTeacherPassword" runat="server" Text="Password" CssClass="inputStyle"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTeacherPassword" runat="server" TextMode="Password" CssClass="inputStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnLibTeacherResister" runat="server" Text="Register" CssClass="btnStyleRegister" OnClick="btnLibTeacherResister_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div class="con2">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
</asp:Content>
