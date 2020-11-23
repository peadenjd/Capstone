<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LogIn1.aspx.cs" Inherits="CyberDaySystem.LogIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
             <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Label ID="lblHeaderMessage" runat="server" Text="Please Login to the Application!" Font-Bold="true" Font-Size="Larger" ></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Button class="btn btn-success" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  />
                        <br />
                        <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>                         
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Label ID="lblIncorrectLogin" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                     <asp:Button class="btn btn-info" ID="btnCreateUser" runat="server" Text="Create New User" OnClick="btnCreateUser_Click"  />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
</asp:Content>
