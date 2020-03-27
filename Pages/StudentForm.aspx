<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="WebAppInClass3.Pages.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h1>Hey Man</ h1>--%>
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                 HeaderText="Please correct the following issues with your current data entry" />

            <%--<asp:RequiredFieldValidator ID="RequiredFieldSIN" runat="server" 
                ErrorMessage="SIN is a required field" 
                SetFocusOnError="true" ControlToValidate="SIN" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionSIN" runat="server" 
                ErrorMessage="SIN is invalid (ex. 777-888-999)"
                 SetFocusOnError="true" ControlToValidate="SIN" Display="None"
                 ValidationExpression="[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9]"></asp:RegularExpressionValidator>--%>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Student ID is a required field" 
                SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server"
                 ErrorMessage="Must be an integer greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:CompareValidator>
            
             <asp:RequiredFieldValidator ID="RequiredFieldName" runat="server" 
                ErrorMessage="Name is a required field" 
                SetFocusOnError="true" ControlToValidate="Name" Display="None"></asp:RequiredFieldValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldWage" runat="server" 
                ErrorMessage="Credit is a required field" 
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeWage" runat="server" 
                ErrorMessage="Credits are 0.0 to 40.0 inclusive"
                 MinimumValue="0.0" MaximumValue="40.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RangeValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldPhone" runat="server" 
                ErrorMessage="Emergency phone number is a required field" 
                SetFocusOnError="true" ControlToValidate="EmergencyPhoneNumber" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionPhone" runat="server" 
                ErrorMessage="Phone is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="EmergencyPhoneNumber" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        </div>
    </div>
 
    <%--<div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="Label1" runat="server" Text="SIN"
                     AssociatedControlID="SIN"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="SIN" runat="server" ></asp:TextBox>
        </div>
    </div>--%>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="LabelStudentID" runat="server" Text="Student ID"
                     AssociatedControlID="StudentID"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                <asp:Label ID="LabelName" runat="server" Text="Student Name"
                     AssociatedControlID="Name"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Name" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="LabelCredits" runat="server" Text="Credits"
                     AssociatedControlID="Credits"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="Credits" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 text-right">
                  <asp:Label ID="LabelPhone" runat="server" Text="Emergency Phone Number"
                     AssociatedControlID="EmergencyPhoneNumber"></asp:Label>
        </div>
        <div class="col-md-4 text-left">
                <asp:TextBox ID="EmergencyPhoneNumber" runat="server"> </asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4 text-left">
            <asp:LinkButton ID="Add" runat="server" OnClick="Add_Click">Add Student</asp:LinkButton>&nbsp;&nbsp;
            <asp:LinkButton ID="Clear" runat="server" CausesValidation="false" OnClick="Clear_Click">Clear</asp:LinkButton>
            <br/><br/>
            <asp:Label ID="MessageLabel" runat="server" ></asp:Label>
            <br/><br/>
            <asp:GridView ID="PeopleGridView" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
