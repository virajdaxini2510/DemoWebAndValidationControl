<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DemoWebAndValidationControl.Registration" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Student Registration Module 1.0.0.1 - Testing</h2>

        <asp:Image
            ID="imgLogo"
            runat="server"
            ImageUrl="~/Images/Mu_LOGO.png"
            Width="360px" />
        <br />
        <br />
        <asp:Literal
            ID="litTitle"
            runat="server"
            Text="<b>Fill all details carefully.</b><br/><br/>">
        </asp:Literal>

        <asp:Panel ID="Panel1" runat="server">

            <table border="1">
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Student Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox
                            ID="txtName"
                            runat="server">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvName"
                            runat="server"
                            ControlToValidate="txtName"
                            ErrorMessage="Name Required"
                            Display="Dynamic"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Age</td>
                    <td>
                        <asp:TextBox
                            ID="txtAge"
                            runat="server">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvAge"
                            runat="server"
                            ControlToValidate="txtAge"
                            ErrorMessage="Age Required"
                            ForeColor="Red" />

                        <asp:RangeValidator
                            ID="rvAge"
                            runat="server"
                            ControlToValidate="txtAge"
                            Type="Integer"
                            MinimumValue="18"
                            MaximumValue="30"
                            ErrorMessage="Age should be between 18 and 30"
                            ForeColor="Red" />

                    </td>

                </tr>

                <tr>

                    <td>Email</td>

                    <td>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server">
</asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvEmail"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email Required"
                            ForeColor="Red" />

                        <asp:RegularExpressionValidator
                            ID="revEmail"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="Invalid Email"
                            ForeColor="Red" />

                    </td>

                </tr>

                <tr>

                    <td>Password</td>

                    <td>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            TextMode="Password">
</asp:TextBox>

                    </td>

                </tr>

                <tr>

                    <td>Confirm Password</td>

                    <td>

                        <asp:TextBox
                            ID="txtConfirm"
                            runat="server"
                            TextMode="Password">
</asp:TextBox>

                        <asp:CompareValidator
                            ID="cvPassword"
                            runat="server"
                            ControlToValidate="txtConfirm"
                            ControlToCompare="txtPassword"
                            ErrorMessage="Password Mismatch"
                            ForeColor="Red" />

                    </td>

                </tr>

                <tr>

                    <td>Gender</td>

                    <td>

                        <asp:RadioButton
                            ID="rbMale"
                            runat="server"
                            GroupName="Gender"
                            Text="Male" />

                        <asp:RadioButton
                            ID="rbFemale"
                            runat="server"
                            GroupName="Gender"
                            Text="Female" />

                    </td>

                </tr>

                <tr>

                    <td>Department</td>

                    <td>

                        <asp:DropDownList
                            ID="ddlDepartment"
                            runat="server">

                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>CSE</asp:ListItem>
                            <asp:ListItem>CE</asp:ListItem>
                            <asp:ListItem>ICT</asp:ListItem>

                        </asp:DropDownList>

                    </td>

                </tr>

                <tr>

                    <td>Skills</td>

                    <td>

                        <asp:ListBox
                            ID="lstSkills"
                            runat="server"
                            SelectionMode="Multiple">

                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>ASP.NET</asp:ListItem>
                            <asp:ListItem>SQL Server</asp:ListItem>
                            <asp:ListItem>JavaScript</asp:ListItem>

                        </asp:ListBox>

                        <asp:CustomValidator
                            ID="cvSkill"
                            runat="server"
                            ErrorMessage="Select at least one skill"
                            OnServerValidate="cvSkill_ServerValidate"
                            ForeColor="Red" />

                    </td>

                </tr>

                <tr>

                    <td>Accept Declaration</td>

                    <td>

                        <asp:CheckBox
                            ID="chkAccept"
                            runat="server"
                            Text="I Agree" />

                    </td>

                </tr>

                <tr>

                    <td colspan="2">

                        <asp:Button
                            ID="btnSubmit"
                            runat="server"
                            Text="Submit"
                            OnClick="btnSubmit_Click" BackColor="Yellow" />

                        <asp:LinkButton
                            ID="lnkClear"
                            runat="server"
                            OnClick="lnkClear_Click">

Clear Form

</asp:LinkButton>

                    </td>

                </tr>

            </table>

        </asp:Panel>

        <br />

        <asp:HyperLink
            ID="hlUniversity"
            runat="server"
            NavigateUrl="https://www.marwadiuniversity.ac.in"
            Text="Visit Marwadi University"
            Target="_blank" />

        <br />
        <br />

        <asp:ValidationSummary
            ID="ValidationSummary1"
            runat="server"
            HeaderText="Please Correct Following Errors :" />

        <br />

        <asp:PlaceHolder
            ID="phMessage"
            runat="server"></asp:PlaceHolder>

    </form>

</body>
</html>
