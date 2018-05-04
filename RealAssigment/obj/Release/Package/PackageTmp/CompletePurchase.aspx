<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="RealAssigment.CompletePurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContant" runat="server">
    <h2>Complete Your Purchase</h2>
    <form id="form1" runat="server">
        <asp:Button ID="btnComfirmPurchase" runat="server" Text="Confirm" OnClick="btnComfirmPurchase_Click"  />
        <asp:Literal ID="litInformation" runat="server"></asp:Literal>
        </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="googleMap" runat="server">
</asp:Content>
