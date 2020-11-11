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
                class="btn btn-success"
                Text="Submit"
                OnClick="btnAssignStudent_Click" />
            <asp:Button
                ID="btnShowAll"
                CausesValidation="false"
                runat="server"
                class="btn btn-info"
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
                EmptyDataText="No Students Selected!" Height="229px" Width="310px" CellPadding="4" ForeColor="#333333" GridLines="None">

                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />

                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />

                <RowStyle BackColor="#FFFBD6" BorderStyle="Groove" ForeColor="#333333"></RowStyle>
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
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
