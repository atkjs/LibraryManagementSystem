<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LibraryManagementSystem.LibrarayPage.About" %>

<%@ Register Src="~/WebUserCalenderControl.ascx" TagPrefix="uc1" TagName="WebUserCalenderControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="con1">
        <h2 align="left" style="color: red">About Us</h2>
        <hr />
        <ul type="disc">
            <ul>
                <li>Be considerate and respectful of others in the Library.</li>
                <li>Leave study spaces neat and clean and ready for use by other patrons. Take all your belongings with you, put trash in the trash bins provided.</li>
                <li>Ringing cell phones are not acceptable. Cell phones must be switched to silent mode. If you need to talk, step outside the library.</li>
                <li>Refrain from any disruptive activity, loud or excessive talking, or behavior that distracts or intimidates other patrons and staff.</li>
                <li>Respect the quiet study areas. No conversations or other noises are allowed in these areas.</li>
                <li>Use the group study rooms for group study. Please keep your conversations to a low level, so as not to disturb other users.</li>
                <li>Posting or placing of bills or flyers within the libraries is prohibited without prior approval from the Library.</li>
                <li>No photography, videotaping, recording, or filming is allowed in the Library without the express permission of librarian.</li>
            </ul>
        </ul>
    </div>
    <div class="con2">
        <div>
            <h4>Library Openaning Hour</h4>
            <hr />
            <p>Saturday - Thursday<br />
                9:00 am-9:00 pm</p>
            <p>Friday
                <br />
                10:00 am-6:00 pm</p>
            <hr />
        </div>
        <div>
            <h4>Calender</h4>
            <hr />
            <uc1:WebUserCalenderControl runat="server" ID="WebUserCalenderControl" />
        </div>
    </div>
</asp:Content>
