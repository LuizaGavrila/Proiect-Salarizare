<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Procente.aspx.cs" Inherits="Aplicatie_Salarizare_Proiect.Procente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 20px; border: 1px solid #ccc; width: 300px; margin: auto;">
        <h3>Setări Taxe</h3>
        CAS (%): <asp:TextBox ID="txtCAS" runat="server">25</asp:TextBox><br />
        CASS (%): <asp:TextBox ID="txtCASS" runat="server">10</asp:TextBox><br />
        Impozit (%): <asp:TextBox ID="txtImpozit" runat="server">10</asp:TextBox><br /><br />
        <asp:Button ID="btnSalveazaProcente" runat="server" Text="Salvează" OnClick="btnSalveazaProcente_Click" />
    </div>
</asp:Content>