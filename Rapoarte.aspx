<%@ Page Title="Stat de Plata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rapoarte.aspx.cs" Inherits="Aplicatie_Salarizare_Proiect.Rapoarte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 20px; font-family: 'Segoe UI', Arial, sans-serif;">
        <h2 style="text-align: center; color: #2c3e50;">STAT DE PLATĂ - LISTĂ ANGAJAȚI</h2>
        <hr />

        <asp:GridView ID="gvAngajati" runat="server" Width="100%" CellPadding="8" ForeColor="#333333" GridLines="None" AutoGenerateColumns="true" CssClass="table-style">
            <AlternatingRowStyle BackColor="White" />
            <HeaderStyle BackColor="#4A76A8" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>

        <div style="margin-top: 30px; padding: 20px; background-color: #ecf0f1; border-radius: 5px; border: 1px solid #bdc3c7;">
            <p style="font-size: 18px;">
                <strong>TOTAL GENERAL DE PLATĂ: </strong>
                <asp:Label ID="lblTotalGeneral" runat="server" Font-Bold="true" ForeColor="DarkBlue" Text="0"></asp:Label> RON
            </p>
            <hr />
            <div style="display: flex; gap: 10px;">
                <asp:Button ID="btnIncarca" runat="server" Text="🔄 REFRESH DATE" OnClick="btnIncarca_Click" 
                    BackColor="#27ae60" ForeColor="White" Font-Bold="true" Width="180px" Height="40px" BorderStyle="None" />
                
                <asp:Button ID="btnStergeTot" runat="server" Text="🗑️ ȘTERGE TOT" OnClick="btnStergeTot_Click" 
                    BackColor="#c0392b" ForeColor="White" Font-Bold="true" Width="180px" Height="40px" BorderStyle="None"
                    OnClientClick="return confirm('Ești sigur că vrei să golești toată baza de date? Acțiunea este ireversibilă!');" />
            </div>
        </div>
    </div>
</asp:Content>