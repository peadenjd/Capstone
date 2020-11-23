<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreateStudent.aspx.cs" Inherits="CyberDaySystem.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                    <asp:Label ID="lblHeaderMessage" runat="server"  Text="Create a Student!" Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblStudentFN" runat="server" Font-Size="Large" ForeColor="Black" Text="Student First Name:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtStudentFN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStudentFN" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblStudentLN" runat="server" Font-Size="Large" ForeColor="Black" Text="Student Last Name:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtStudentLN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStudentLN" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAge" runat="server" Font-Size="Large" ForeColor="Black" Text="Age: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtAge" Operator="DataTypeCheck" Type="Integer" ForeColor="Red" SetFocusOnError="true" Text="* Entry must be a whole integer" ErrorMessage="* Data must be numeric!"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblNotes" runat="server" Font-Size="Large" ForeColor="Black" Text="Notes: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNotes" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNotes" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLunchTicket" runat="server" Font-Size="Large" ForeColor="Black" Text="Lunch Ticket: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLunchTicket" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLunchTicket" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="parentAttending" runat="server" Font-Size="Large" ForeColor="Black" Text="Parent Attending? "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButton ID="rbtnYes" runat="server" Text="Yes" Value="1" GroupName="radio" />
                    <asp:RadioButton ID="rbtnNo" runat="server" Text="No" Value="2" GroupName="radio" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="parentEmail" runat="server" Font-Size="Large" ForeColor="Black" Text="Parent Email"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtparentEmail" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblParentAuthorization" Font-Size="Large" ForeColor="Black" runat="server" Text="Do you agree to the signed photo release of your child?"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButtonList ID="rdoParentSignature" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem  Text="Yes" Value="1"></asp:ListItem>
                        <asp:ListItem Text="No" Value="0"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
          
            <%--    <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblUpload" runat="server" Text="Select File: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </asp:TableCell>    
                </asp:TableRow>--%>
                  



        </asp:Table>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Black" Text="Select a Teacher: "></asp:Label>
        <asp:DropDownList
            ID="DropDownList1"
             CssClass="mydropdownlist"
            runat="server"
            DataSourceID="datasrcTeacherList"
            DataTextField="TeacherName"
            DataValueField="TeacherID"
            AutoPostBack="true">
        </asp:DropDownList>
    </div>
    <br />
    <br />

    <div>

        <asp:Button class="btn btn-primary" ID="btnCommit" runat="server" Text="Submit" OnClick="btnCommit_Click" />
        <asp:Button class="btn btn-primary" ID="btnDisplay" CausesValidation="false" runat="server" Text="Display" OnClick="btnDisplay_Click" />
        <asp:Button class="btn btn-danger" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />

        <fieldset>
            <legend>All Students Attending: </legend>

            <asp:GridView
                runat="server"
                ID="getTeacherResult"
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
    <div>
    </div>
    <asp:SqlDataSource
        runat="server"
        ID="datasrcTeacherList"
        ConnectionString="<%$ConnectionStrings:CyberDay %>"
        SelectCommand="SELECT TeacherID, FirstName + ' ' + LastName as TeacherName FROM Teacher; " />

</asp:Content>
