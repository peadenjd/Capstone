<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CyberDaySystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
  <div class="column">
    <div class="card">
      <img src="/images/TD.jpg" alt="Tom" class="center" style="width:75%">
      <div class="container">
        <h2>Dr. Tom Dillon</h2>
          <div class="text-center">
        <p class="title">Professor &amp; Cyber Day Coordinator</p>
        <p>Some text that describes me.</p>
        <p>example@example.com</p>
              </div>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/images/SL.jpg" alt="Shawn" class="center" style="width:75%">
      <div class="container">
        <h2>Professor Shawn Lough</h2>
           <div class="text-center">
        <p class="title">Professor &amp; Cyber Day Coordinator</p>
        <p>Some text that describes me .</p>
        <p>example@example.com</p>
               </div>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</asp:Content>
