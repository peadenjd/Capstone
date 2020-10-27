<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="CyberDaySystem.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <asp:Label ID="lblUserStatus" runat="server" Text="" Font-Bold="true" Font-Size="Large" Font-Names="Times New Roman Bold Italic"></asp:Label>
        <hr />
        <asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" />     
     </div>
</asp:Content>