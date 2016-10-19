<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonInfo.aspx.cs" Inherits="PersonInfo.PersonInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Personal Info Validation</h1>
        <div class="form-group">
            <asp:Label ID="Label1" for="FirstName" runat="server" Text="Firstname"></asp:Label>
            <br />
            <asp:TextBox ID="Firstname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="reqFirstname" controltovalidate="FirstName" errormessage="Please fill information!" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label2" for="LastName" runat="server" Text="Lastname"></asp:Label>
            <br />
            <asp:TextBox ID="Lastname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="LastName" errormessage="Please fill information!" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label3" for="PostalCode" runat="server" Text="PostalCode"></asp:Label>
            <br />
            <asp:TextBox ID="PostalCode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="PostalCode" errormessage="Please fill information!" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" controltovalidate="PostalCode" ValidationExpression="\d{5}" runat="server" ErrorMessage="Not a valid  PostalCode!" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label4" for="Email" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="Email" errormessage="Please fill information!" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" controltovalidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Not a valid email" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label5" for="Age" runat="server" Text="Age"></asp:Label>
            <br />
            <asp:TextBox ID="Age" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="Age" errormessage="Please fill information!" Display="Dynamic" />
            <asp:RangeValidator ID="RangeValidator1" MaximumValue="110" controltovalidate="Age" MinimumValue="0" runat="server" ErrorMessage="Not a valid age" Display="Dynamic" Type="Integer"></asp:RangeValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label6" for="Password" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" controltovalidate="Password" errormessage="Please fill information!" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label7" for="RePassword" runat="server" Text="RePassword"></asp:Label>
            <br />
            <asp:TextBox ID="RePassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" controltovalidate="RePassword" errormessage="Please fill information!" Display="Dynamic" />
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="Password" controltovalidate="RePassword" runat="server" ErrorMessage="Password does not match" Display="Dynamic"></asp:CompareValidator>
        </div>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="btn1Clicked" />
    </div>
    </form>
</body>
</html>
