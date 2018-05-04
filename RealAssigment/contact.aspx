
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="RealAssigment.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContant" runat="server">
    <form id="form1" runat="server" style="height: 90px; width: 672px">
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regEmailField" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email is invalid" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="regFieldemail" runat="server" ControlToValidate="TextEmail" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please enter your subject"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblBodytxt" runat="server" Text="Body"></asp:Label>
        <asp:TextBox ID="txtBodyTxt" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqCommentField" runat="server" ErrorMessage="Please enter  your comment" ControlToValidate="txtBodyTxt"></asp:RequiredFieldValidator>
        <asp:Button ID="btnSubmitCom" runat="server" Text="Submit Comment" OnClick="btnSubmitCom_Click" Width="149px" />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
        <br />
    </form>
</asp:Content>


<asp:Content ID="Content6" runat="server" contentplaceholderid="googleMap"> 
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 4.885731, lng: 114.931669},
          zoom: 8
          });
          
      }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARzqtZrfXKP6uDjX9e6_3Jxr86SLVNrgY&callback=initMap" type="text/javascript"></script>
</asp:Content>



