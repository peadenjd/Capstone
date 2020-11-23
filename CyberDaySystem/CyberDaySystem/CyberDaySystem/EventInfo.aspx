<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="EventInfo.aspx.cs" Inherits="CyberDaySystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <fieldset>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Select an Event :"></asp:Label>
            <asp:DropDownList
                CssClass="mydropdownlist"
                ID="DropDownList1"
                runat="server"
                AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>

        </fieldset>
        <br />

        <center>
                <h2>Event Report</h2>
                    <br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Event Details:"></asp:Label>
              
             <asp:GridView 
                    ID="GridView1"
                    runat="server"
                    AutoPostBack="true"
                    AutoGenerateColumns="False"
                    AllowSorting="True"
                    EmptyDataText ="No Coordinators Selected!" Height="198px" Width="578px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Center" CellSpacing="1" GridLines="None">
                    
                    <Columns>
                        <asp:BoundField ReadOnly="true"
                            HeaderText="EventID"
                            DataField="EventID"
                            InsertVisible="False"
                            SortExpression="EventID">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Event Title"
                            DataField="EventTitle"
                            SortExpression="EventTitle">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Date"
                            DataField="Date"
                            SortExpression="Date">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Time"
                            DataField="Time"
                            SortExpression="Time">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Coordinator Name"
                            DataField="CoordinatorName" 
                            SortExpression="CoordinatorName" >
       
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
       
                       </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerSettings Position="Top" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>

                <div style="display: inline-block;">
                    &nbsp;&nbsp;&nbsp;</div>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Volunteer List:"></asp:Label>
            <br />
                <asp:GridView ID="GridView2" 
                    runat="server"
                    AutoPostBack="true"
                    AutoGenerateColumns="False"
                    AllowSorting="True"
                    EmptyDataText ="No Volunteers Selected!" Height="234px" Width="588px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" GridLines="None" HorizontalAlign="Center" CellSpacing="1">
                
                    <Columns>
                   
                        <asp:BoundField HeaderText="Volunteer Name"
                            DataField="VolunteerName" 
                            SortExpression="VolunteerName" > 
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Participation History"
                            DataField="ParticipationHistory" 
                            SortExpression="ParticipationHistory" > 
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Organization Affiliation"
                            DataField="OrganizationAffiliation" 
                            SortExpression="OrganizationAffiliation" > 
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                         <asp:BoundField HeaderText="Confirm Meal Ticket" 
                            DataField="MealTicket" 
                            SortExpression="MealTicket" > 

                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>

                       </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>

                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" Height="50px" Width="578px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Visible="False">
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="Column1" HeaderText="Total Number of Confirm Meal Ticket:" ReadOnly="True" SortExpression="Column1" />
                        </Fields>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="SELECT COUNT(*) 
 FROM EventPersonnel, Event, EventPresenter 
 WHERE EventPresenter.EventID = Event.EventID AND EventPresenter.PersonnelID = EventPersonnel.PersonnelID AND EventPersonnel.MealTicket like 'yes' 
 AND Event.EventID = @EventID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="EventID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                    <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Attendee List:"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" 
                runat="server"
                 AutoPostBack="true"
                    AutoGenerateColumns="False"
                    AllowSorting="True"
                    EmptyDataText ="No Students Selected!" Height="229px" Width="598px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" GridLines="None" HorizontalAlign="Center" CellSpacing="1" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                
                    <Columns>
                       
                        <asp:BoundField HeaderText="Attendee Name" 
                            DataField="StudentName" 
                            SortExpression="StudentName" >  
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Chaperones" 
                            DataField="ParentAttending" 
                            SortExpression="ParentAttending" >  
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Confirm Meal Ticket" SortExpression="LunchTicket">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("LunchTicket") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("LunchTicket") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#336666" ForeColor="White" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                       </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="590px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" Visible="False">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="Column1" HeaderText="Total Number of Confirm Meal Ticket:"  SortExpression="Column1" ReadOnly="True" />
                    </Fields>
                    <FooterStyle BackColor="Red" ForeColor="red" />
                    <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CyberDay %>" SelectCommand="select count (*) from Student, Event, EventAttendance where EventAttendance.EventID = Event.EventID and EventAttendance.StudentID = Student.StudentID and student.LunchTicket like 'yes' and event.EventID=@EventID    ">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="EventID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                </center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
    </div>

    <%--           <asp:SqlDataSource  
                ID="sqlsrcEventQuery"
                runat="server"
                ConnectionString="<%$ConnectionStrings:dbconnection %>"
                SelectCommand="SELECT Event.EventID, Event.EventTitle, Event.Time, Event.Date, Coordinator.FirstName + ' ' + Coordinator.LastName as CoordinatorName,EventPersonnel.FirstName + ' ' + EventPersonnel.LastName as VolunteerName FROM Event, EventPersonnel, EventPresenter, Coordinator WHERE Event.EventID = EventPresenter.EventID and EventPersonnel.PersonnelID = EventPresenter.PersonnelID and Coordinator.CoordinatorID = EventPresenter.CoordinatorID ; " />--%>
</asp:Content>
