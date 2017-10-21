<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LibraryManagementSystem.LibrarayPage._default" %>

<%@ Register Src="~/WebUserCalenderControl.ascx" TagPrefix="uc1" TagName="WebUserCalenderControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    
    <div class="con1">
        <h2 align="left" style="color:red">Welcome Message</h2>
        <hr />
        <p>
            The Library’s patrons have a wide variety of access routes to conduct expert research and retrieve relevant resources. It contains a hybrid collection of printed course-related book materials, and other e-resources such as e-journals, e-books, electronic theses & dissertations (ETD), technical reports of research organizations, and bibliographic databases. The Library is committed to obtaining unavailable requested documents from the document suppliers and inter-library document delivery.
        </p>
    </div>
    <div class="con2">
        <div>
            <h4>Library Openaning Hour</h4>
            <hr />
            <p>Saturday - Thursday<br/> 9:00 am-9:00 pm</p>
            <p>Friday <br/> 10:00 am-6:00 pm</p>
            <hr />
        </div>
        <div>
             <h4>Calender</h4>
            <hr />
        <uc1:WebUserCalenderControl runat="server" id="WebUserCalenderControl" />
        </div>
    </div>
</asp:Content>
