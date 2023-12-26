<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profit.aspx.cs" Inherits="CoreMarket.Profit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ciro/Kar Hesaplayıcı</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Ciro/Kar Hesaplayıcı</h1>
            <div>
                <asp:Label ID="revenueLabel" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <asp:Label ID="costLabel" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <asp:Label ID="profitLabel" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
