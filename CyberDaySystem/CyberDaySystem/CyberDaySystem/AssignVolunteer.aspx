<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AssignVolunteer.aspx.cs" Inherits="CyberDaySystem.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <fieldset>
            <legend>Assign Volunteers to Events: </legend>
            <asp:DropDownList
                 CssClass="mydropdownlist"
                ID="ddlVolunteerList"
                runat="server"
             
                DataSourceID="datasrcUserList"
                DataTextField="VolunteerName"
                DataValueField="PersonnelID"
                AutoPostBack="true">
            </asp:DropDownList>

            <asp:DropDownList ID="ddlEventList"
                runat="server"
                 CssClass="mydropdownlist1"
                DataSourceID="dtasrcEventList"
                DataTextField="EventTitle"
                DataValueField="EventID"
                AutoPostBack="true">
            </asp:DropDownList>

            <asp:Button
                ID="btnAssignVolunteers"
                runat="server"
                class="btn btn-primary"
                Text="Submit"
                OnClick="btnAssignVolunteers_Click" />
            <asp:Button
                ID="btnPopulate"
                runat="server"
                class="btn btn-secondary"
                Text="Display"
                OnClick="btnPopulate_Click" />
        </fieldset>
        <br />
        <fieldset>
            <legend>Events for Selected Volunteers: </legend>
            <asp:GridView
                runat="server"
                ID="getResult"
                RowStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center"
                RowStyle-BorderWidth="10px"
                EmptyDataText="No Volunteers Selected!" Height="229px" Width="310px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">

                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />

                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF"></HeaderStyle>

                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />

                <RowStyle BackColor="#DEDFDE" BorderStyle="Groove" ForeColor="Black"></RowStyle>
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />

            </asp:GridView>
        </fieldset>
    </div>
    <asp:SqlDataSource runat="server"
        ID="datasrcUserList"
        ConnectionString="<%$ConnectionStrings:CyberDay %>"
        SelectCommand="Select FirstName + ' ' + LastName as VolunteerName, PersonnelID From EventPersonnel; " />

    <asp:SqlDataSource runat="server"
        ID="dtasrcEventList"
        ConnectionString="<%$ConnectionStrings:CyberDay %>"
        SelectCommand="Select EventID, EventTitle From Event; " />
</asp:Content>
