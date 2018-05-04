<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="RealAssigment.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Admin Panel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    Welcome to admin panel
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContant" runat="server">
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="List" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Log out" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="googleMap" runat="server">
</asp:Content>
