<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Butterfield_Bakery.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 418px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 418px;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="378px" ImageUrl="~/butterfield-bread.jpg" Width="1265px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ControlToValidate="TextBoxFName" ErrorMessage="Please enter first name" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ControlToValidate="TextBoxLName" ErrorMessage="Please enter last name" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblCellphoneNum" runat="server" Text="Cellphone Numbers:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxCellNumbers" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCellphoneNumber" runat="server" ControlToValidate="TextBoxCellNumbers" ErrorMessage="Please enter cellphone number" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Panel ID="PanelResidentialAddress" runat="server">
                        <table style="width:100%;">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblResAddress" runat="server" Text="Residential Address" Font-Bold="True" Font-Size="Large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblStreetName" runat="server" Text="Street Name:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxStreetName" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorStreetName" runat="server" ControlToValidate="TextBoxStreetName" ErrorMessage="Please enter street name" Font-Bold="True" Font-Italic="False"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbTownName" runat="server" Text="Town Name:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxTownName" runat="server" Height="20px" OnTextChanged="TextBoxTownName_TextChanged" Width="173px"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorTownName" runat="server" ControlToValidate="TextBoxTownName" ErrorMessage="Please enter Town name" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblPostCode" runat="server" Text="Postal Code:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxPostalCode" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPostalCode" runat="server" ControlToValidate="TextBoxPostalCode" ErrorMessage="Please enter Postal Code" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server">
                        <table class="auto-style2">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblCreateAcc" runat="server" Text="Create Account"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblCreateUsername" runat="server" Text="Username:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxCreateUsername" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxCreateUsername" ErrorMessage="Please enter username(email)" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="lblCreatePassword" runat="server" Text="Create Password:"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="TextBoxCreatePassword" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCreatePassword" runat="server" ControlToValidate="TextBoxCreatePassword" ErrorMessage="Please enter password" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Please enter correct password" Font-Bold="True"></asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button ID="btnCreateAcc" runat="server" Text="Create Account" OnClick="btnCreateAcc_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLinkBack" runat="server" NavigateUrl="~/LoginForm.aspx">Back</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
