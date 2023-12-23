<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Products.aspx.cs" Inherits="CoreMarket.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="Content/ProductList.css" />
    </head>
    <body>
        <div>
            <h2>Ürünler</h2>
            <asp:Repeater ID="repeaterProducts" runat="server">
                <ItemTemplate>
                    <div class="product-item">
                        <h2><%# Eval("Name") %></h2>
                        <p>Count: <%# Eval("Count") %></p>
                        <p>Price: <%# Eval("Price") %></p>
                        <p>PurcasedPrice: <%# Eval("PurcasedPrice") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </body>
    </html>
</asp:Content>

