<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RealAssigment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContant" runat="server">
    <form id="form1" runat="server" style="height: 115px">
        <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
        Password<asp:TextBox ID="TxtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" Height="22px"  Text="Login" OnClick="btnLogin_Click1" />
        <asp:Literal ID="LitLoginError" runat="server"></asp:Literal>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="googleMap" runat="server">
</asp:Content>
