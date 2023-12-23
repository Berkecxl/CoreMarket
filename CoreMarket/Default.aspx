<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoreMarket._Default" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Product Log</h2>
        <asp:Literal ID="litProductLog" runat="server"></asp:Literal>
    </div>
</asp:Content>