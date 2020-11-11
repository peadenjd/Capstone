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
                    <asp:Label ID="lblHeaderMessage" runat="server"  Text="Please Fill in the Boxes!" Font-Bold="true" Font-Size="Larger"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblStudentFN" runat="server" Font-Size="Large" ForeColor="White" Text="Student First Name:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtStudentFN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStudentFN" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblStudentLN" runat="server" Font-Size="Large" ForeColor="White" Text="Student Last Name:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtStudentLN" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStudentLN" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblAge" runat="server" Font-Size="Large" ForeColor="White" Text="Age: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAge" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtAge" Operator="DataTypeCheck" Type="Integer" ForeColor="Red" SetFocusOnError="true" Text="* Entry must be a whole integer" ErrorMessage="* Data must be numeric!"></asp:CompareValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblNotes" runat="server" Font-Size="Large" ForeColor="White" Text="Notes: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNotes" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNotes" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLunchTicket" runat="server" Font-Size="Large" ForeColor="White" Text="Lunch Ticket: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLunchTicket" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLunchTicket" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" Text="* This is a required field" ErrorMessage="* Field cannot be blank!"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="parentAttending" runat="server" Font-Size="Large" ForeColor="White" Text="Parent Attending? "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButton ID="rbtnYes" runat="server" Text="Yes" Value="1" GroupName="radio" />
                    <asp:RadioButton ID="rbtnNo" runat="server" Text="No" Value="2" GroupName="radio" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="parentEmail" runat="server" Font-Size="Large" ForeColor="White" Text="Parent Email"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtparentEmail" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblParentAuthorization" Font-Size="Large" ForeColor="White" runat="server" Text="Do you agree to the signed photo release of your child?"></asp:Label>
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
        <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White" Text="Select a Teacher: "></asp:Label>
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

        <asp:Button class="btn btn-success" ID="btnCommit" runat="server" Text="Submit" OnClick="btnCommit_Click" />
        <asp:Button class="btn btn-info" ID="btnDisplay" CausesValidation="false" runat="server" Text="Display" OnClick="btnDisplay_Click" />
        <asp:Button class="btn btn-danger" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />

        <fieldset>
            <legend>All Students Attending: </legend>

            <asp:GridView
                runat="server"
                ID="getTeacherResult"
                RowStyle-HorizontalAlign="Center"
                HeaderStyle-HorizontalAlign="Center"
                RowStyle-BorderWidth="10px"
                EmptyDataText="No Students Selected!" Height="229px" Width="310px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
    <div>
    </div>
    <asp:SqlDataSource
        runat="server"
        ID="datasrcTeacherList"
        ConnectionString="<%$ConnectionStrings:CyberDay %>"
        SelectCommand="SELECT TeacherID, FirstName + ' ' + LastName as TeacherName FROM Teacher; " />

</asp:Content>
