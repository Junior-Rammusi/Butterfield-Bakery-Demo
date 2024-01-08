<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Butterfield_Bakery.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 266px;
        }
        .auto-style4 {
            width: 266px;
            height: 568px;
        }
        .auto-style5 {
            height: 568px;
        }
        .auto-style6 {
            width: 469px;
        }
        .auto-style7 {
            height: 568px;
            width: 469px;
        }
        .auto-style8 {
            width: 469px;
            text-align: center;
        }
        .auto-style9 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Image ID="Image6" runat="server" Height="312px" ImageUrl="~/butterfield-bread.jpg" Width="625px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="ImageBread" runat="server" Height="493px" ImageUrl="~/Bread-on-Shelves.jpg" Width="432px" />
                </td>
                <td class="auto-style7">
                    <asp:Image ID="Image4" runat="server" Height="504px" ImageUrl="~/padaria-e-pastelaria.jpg" Width="625px" />
                </td>
                <td class="auto-style5">
                    <asp:Image ID="Image5" runat="server" Height="513px" ImageUrl="~/chocolate-chips-milk-buns-5.jpg" Width="492px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btnPlaceOrder" runat="server" Text="PLACE ORDER" OnClick="btnPlaceOrder_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Panel ID="PanelLogin" runat="server">
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="auto-style9" OnTextChanged="TextBoxUsername_TextChanged"></asp:TextBox>
                                    &nbsp;<br /> &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Please enter correct username" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter correct password" Font-Bold="True"></asp:RequiredFieldValidator>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblNewCustomer" runat="server" Text="New customer?"></asp:Label>
                                </td>
                                <td>
                                    <asp:HyperLink ID="HyperLinkRegister" runat="server" NavigateUrl="~/RegistrationForm.aspx">Register</asp:HyperLink>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
