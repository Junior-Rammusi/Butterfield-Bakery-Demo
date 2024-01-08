<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkersForm.aspx.cs" Inherits="Butterfield_Bakery.WorkersForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 348px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<table style="width:100%;">
                <tr>
                    <td colspan="3">
                        <asp:Image ID="Image1" runat="server" Height="360px" ImageUrl="~/butterfield-bread.jpg" Width="1310px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" rowspan="2">
                        <asp:GridView ID="GridViewOrders" runat="server">
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:Button ID="btnViewOrder" runat="server" Text="VIEW ORDER" OnClick="btnViewOrder_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDelete" runat="server" Text="Enter ProductID to delete:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnOrderComplete" runat="server" Text="ORDER COMPLETE" OnClick="btnOrderComplete_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDelete" runat="server" Font-Size="Large" Width="195px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
