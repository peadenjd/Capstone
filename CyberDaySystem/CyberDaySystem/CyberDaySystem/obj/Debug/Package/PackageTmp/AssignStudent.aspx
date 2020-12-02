<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AssignStudent.aspx.cs" Inherits="CyberDaySystem.AssignStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <fieldset>
            <legend>Assign Students to Events: </legend>
            <asp:DropDownList
                ID="ddlUserList"
                CssClass="mydropdownlist"
                runat="server"
                DataSourceID="datasrcUserList"
                DataTextField="StudentName"
                DataValueField="StudentID"
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
                ID="btnAssignStudent"
                runat="server"
                class="btn btn-primary"
                Text="Submit"
                OnClick="btnAssignStudent_Click" />
            <asp:Button
                ID="btnShowAll"
                CausesValidation="false"
                runat="server"
                class="btn btn-secondary"
                Text="Display"
                OnClick="btnShowAll_Click" />
        </fieldset>
        <br />
        <fieldset>
            <legend>Events for Selected Students: </legend>
            <asp:GridView
                runat="server"
                ID="getEventsResult"
                RowStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center"
                RowStyle-BorderWidth="10px"
                EmptyDataText="No Students Selected!" Height="229px" Width="310px" CellPadding="3" GridLines="None" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">

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
        SelectCommand="Select  FirstName + ' ' + LastName as StudentName, StudentID  From Student; " />

    <asp:SqlDataSource runat="server"
        ID="dtasrcEventList"
        ConnectionString="<%$ConnectionStrings:CyberDay %>"
        SelectCommand="Select EventID, EventTitle From Event; " />
</asp:Content>
