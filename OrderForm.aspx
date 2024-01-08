<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="Butterfield_Bakery.OrderForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 62px;
        }
        .auto-style2 {
            height: 254px;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            width: 62px;
            height: 31px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            width: 62px;
            height: 22px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            margin-left: 2px;
        }
        .auto-style10 {
            text-align: center;
            height: 31px;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            text-align: center;
            height: 59px;
        }
        .auto-style13 {
            width: 100%;
            height: 349px;
        }
        .auto-style14 {
            width: 100%;
            height: 222px;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 100%;
            height: 234px;
        }
        .auto-style17 {
            width: 182px;
            height: 22px;
        }
        .auto-style18 {
            width: 182px;
        }
        .auto-style19 {
            width: 182px;
            height: 31px;
        }
        .auto-style20 {
            margin-left: 0px;
        }
        .auto-style21 {
            width: 62px;
            height: 43px;
        }
        .auto-style22 {
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<br />
            <table style="width:100%;">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="415px" ImageUrl="~/butterfield-bread.jpg" Width="1067px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="auto-style16">
                                <tr>
                                    <td class="auto-style3" colspan="3">
                                        <asp:Label ID="LabelBuns" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Buns"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBoxPaella" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Paella" />
                                    </td>
                                    <td class="auto-style1">[1]</td>
                                    <td class="auto-style1">R 25</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBoxCheeseRolls" runat="server" Text="Cheese Rolls" />
                                    </td>
                                    <td class="auto-style1">[4]</td>
                                    <td class="auto-style1">R 45</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBoxHotDogRolls" runat="server" Text="Hotdog Rolls" />
                                    </td>
                                    <td class="auto-style4">[6]</td>
                                    <td class="auto-style4">R 17</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBoxBurgerBuns" runat="server" Text="Burger Buns" />
                                    </td>
                                    <td class="auto-style1">[6]</td>
                                    <td class="auto-style1">R 17</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBoxCroissants" runat="server" Text="Croissants" />
                                    </td>
                                    <td class="auto-style1">[6]</td>
                                    <td class="auto-style1">R 28</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBoxHotCrossBuns" runat="server" Text="Hotcross Buns" />
                                    </td>
                                    <td class="auto-style4">[6]</td>
                                    <td class="auto-style4">R 19</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:CheckBox ID="CheckBoxChelseaBuns" runat="server" Text="Chelsea Buns" />
                                    </td>
                                    <td class="auto-style4">[6]</td>
                                    <td class="auto-style4">R 20</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                    <td class="auto-style2">
                        <table class="auto-style14">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="LabelConfectionery" runat="server" Font-Bold="True" Font-Italic="True" Text="Confectionery"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxApplePie" runat="server" Text="Apple Pie" />
                                </td>
                                <td class="auto-style1">[1]<td class="auto-style1">R 40</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxDonuts" runat="server" Text="Donuts" />
                                </td>
                                <td class="auto-style1">[3]</td>
                                <td class="auto-style1">R 38</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxBlueberryScones" runat="server" Text="Blueberry Scones" />
                                </td>
                                <td class="auto-style1">[24]</td>
                                <td class="auto-style1">R 170</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxPeppermintCrisp" runat="server" Text="Peppermint Crisp" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style1">R 62</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxJamTarts" runat="server" Text="Jam Tarts" />
                                </td>
                                <td class="auto-style1">[12]</td>
                                <td class="auto-style1">R 48</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxCaramelSwirl" runat="server" Text="Caramel Swirl" />
                                </td>
                                <td class="auto-style1">[4]</td>
                                <td class="auto-style1">R 80</td>
                            </tr>
                            <tr>
                                <td class="auto-style22">
                                    <asp:CheckBox ID="CheckBoxMilkTart" runat="server" Text="Milk Tart" />
                                </td>
                                <td class="auto-style21">[1]</td>
                                <td class="auto-style21"R 3R 35</td>
                                    R 35</tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style15">
                            <tr>
                                <td colspan="3" class="auto-style11">
                                    <asp:Label ID="LabelCakes" runat="server" Font-Bold="True" Font-Italic="True" Text="Cakes"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxBranMuffins" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Bran Muffins" />
                                </td>
                                <td class="auto-style1">[6] <td class="auto-style1">R 45</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxCupCakes" runat="server" Text="Cup Cakes" />
                                </td>
                                <td class="auto-style4">[4]</td>
                                <td class="auto-style4">R 68</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxVanillaCake" runat="server" Text="Vanilla Cake" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style1">R 109</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxChocolateCake" runat="server" Text="Chocolate Cake" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style1">R 109</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxCaramelCake" runat="server" Text="Caramel Cake" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style1">R 115</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxRedVelvet" runat="server" Text="Red Velvet" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style1">R115</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxTiramisu" runat="server" Text="Tiramisu" />
                                </td>
                                <td class="auto-style4">[1]</td>
                                <td class="auto-style4">R 130</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxCarrotCake" runat="server" Text="Carrot Cake" />
                                </td>
                                <td class="auto-style4">[1]</td>
                                <td class="auto-style4">R 109</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxDeathbyChocolate" runat="server" Text="Death By Chocolate" />
                                </td>
                                <td class="auto-style4">[1]</td>
                                <td class="auto-style4"R 140</td>
                                    R 140</tr>
                        </table>
                    </td>
                    <td>
                        <table class="auto-style13">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="LabelBread" runat="server" Font-Bold="True" Font-Italic="True" Text="Bread"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:CheckBox ID="CheckBoxWhiteBread" runat="server" Text="White Bread" />
                                </td>
                                <td class="auto-style6">[1]</td>
                                <td class="auto-style17">R 12</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxBrownBread" runat="server" Text="Brown Bread" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style18">R 10</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxGarlicBread" runat="server" Text="Garlic Bread" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style18">R 23</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxSourDoughBread" runat="server" Text="Sour Dough Bread" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style18">R 21</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxFatCakes" runat="server" Text="Fat Cakes" />
                                </td>
                                <td class="auto-style4">[6]</td>
                                <td class="auto-style19">R 14</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBoxSteamedBread" runat="server" Text="Steamed Bread" />
                                </td>
                                <td class="auto-style1">[1]</td>
                                <td class="auto-style18">R 25</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxPizzaBread" runat="server" Text="Pizza Bread" />
                                </td>
                                <td class="auto-style4">[1]</td>
                                <td class="auto-style19">R 31</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxPizzaPie" runat="server" Text="Pizza Pie" />
                                </td>
                                <td class="auto-style4">[1]</td>
                                <td class="auto-style19">R 22</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:CheckBox ID="CheckBoxBrioche" runat="server" Text="Brioche" />
                                </td>
                                <td class="auto-style4">[1]</td>
                                <td class="auto-style19">R 40</td>
                            </tr>
                        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="BttnAddToCart" runat="server" Font-Bold="True" Font-Size="Large" Height="55px" Text="Add to Cart" Width="464px" OnClick="BttnAddToCart_Click1" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:ListBox ID="ListBoxBox" runat="server" Height="172px" Width="666px" CssClass="auto-style20"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style7">
            <asp:Button ID="BttnCheckout" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Size="Large" Height="99px" Text="Checkout" Width="259px" OnClick="BttnCheckout_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLinkBack" runat="server" NavigateUrl="~/LoginForm.aspx">Back</asp:HyperLink>
                </td>
            </tr>
        </table>
        <p class="auto-style8">
            &nbsp;</p>
    </form>
</body>
</html>
