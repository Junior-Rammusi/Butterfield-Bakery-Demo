<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutForm.aspx.cs" Inherits="Butterfield_Bakery.CheckoutForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 438px;
        }
        .auto-style4 {
            width: 285px;
        }
        .auto-style5 {
            text-align: center;
            height: 39px;
        }
        .auto-style6 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="320px" ImageAlign="Middle" ImageUrl="~/butterfield-bread.jpg" Width="1099px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="auto-style2">
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblBankingDetails" runat="server" Text="Banking Details" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="lblCardName" runat="server" Text="Name on card:"></asp:Label>
                                    </td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBoxNameCard" runat="server" OnTextChanged="TextBoxNameCard_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNameCard" runat="server" ControlToValidate="TextBoxNameCard" ErrorMessage="Please enter name!" Font-Bold="True" Font-Italic="False"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number:"></asp:Label>
                                    </td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBoxCardNumber" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCardNumber" runat="server" ControlToValidate="TextBoxCardNumber" ErrorMessage="Enter card number!" Font-Bold="True"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="lblExpDate" runat="server" Text="Expiry Date:"></asp:Label>
                                    </td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBoxExpDate" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxExpDate" ErrorMessage="Enter Expiry Date" Font-Bold="True"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="lblCVV" runat="server" Text="CVV:"></asp:Label>
                                    </td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="TextBoxCVV" runat="server"></asp:TextBox>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxCVV" ErrorMessage="Enter The Correct CVV" Font-Bold="True" MaximumValue="999" MinimumValue="100"></asp:RangeValidator>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td>
                        <asp:Panel ID="Panel2" runat="server">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <asp:Label ID="lblCardType" runat="server" Text="Card Type:"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RdBtnMasterCard" runat="server" Text="MasterCard" GroupName="Card Type" OnCheckedChanged="Page_Load" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">
                                        <asp:RadioButton ID="RdBtnVisa" runat="server" Text="Visa" GroupName="Card Type" OnCheckedChanged="Page_Load" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="btnPay" runat="server" Text="PAY ORDER" OnClick="btnPay_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:HyperLink ID="HyperLinkBack" runat="server" NavigateUrl="~/LoginForm.aspx">Back</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
