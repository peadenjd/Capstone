<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="createEvent.aspx.cs" Inherits="CyberDaySystem.createEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="lblHeaderMessage" runat="server" Text="Please Fill in the Boxes!" Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblTitle" Font-Size="Large" ForeColor="White" runat="server" Text="Event Title: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTitle" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDate" Font-Size="Large" ForeColor="White" runat="server" Text="Event Date: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtDate" Operator="DataTypeCheck" Type="Date" ForeColor="Red" SetFocusOnError="true" Text="* Entry must be in Date format" ErrorMessage="* Data must be in Date format!"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblTime" Font-Size="Large" ForeColor="White" runat="server" Text="Event Time: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTime" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>

                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLocation" runat="server" Font-Size="Large" ForeColor="White" Text="Event Location: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLocation" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSchoolName" runat="server" Font-Size="Large" ForeColor="White" Text="Middle School Name: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSchoolName" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSchoolNumber" runat="server" Font-Size="Large" ForeColor="White" Text="Middle School Contact Number: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSchoolNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSchoolNumber" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblSchoolEmail" runat="server" Font-Size="Large" ForeColor="White" Text="Middle School Contact Email: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSchoolEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSchoolEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblRoomNbr" Font-Size="Large" ForeColor="White" runat="server" Text="Room Number: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRoomNbr" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRoomNbr" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblRoomCap" Font-Size="Large" ForeColor="White" runat="server" Text="Room Capacity: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRoomCap" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRoomCap" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblDescription" Font-Size="Large" ForeColor="White" runat="server" Text="Event Tasks/Activites: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDescription" runat="server"  Height="100px" Width="159px" TextMode="MultiLine" Rows="10"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescription" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
                    
           
     

        </asp:Table>
    </div>

    <div>

        <asp:Button class="btn btn-success" ID="btnCommit" runat="server" Text="Submit" OnClick="btnCommit_Click" />
        <asp:Button class="btn btn-info" ID="btnDisplay" CausesValidation="false" runat="server" Text="Display" OnClick="btnDisplay_Click" />
        <asp:Button class="btn btn-danger" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />

        <fieldset>
            <legend>All Events: </legend>
            <asp:GridView
                runat="server"
                ID="getEventResult"
                RowStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center"
                RowStyle-BorderWidth="10px"
                EmptyDataText="No Events Selected!" Height="229px" Width="310px" CellPadding="4" ForeColor="#333333" GridLines="None">

                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

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
</asp:Content>
