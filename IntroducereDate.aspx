<%@ Page Title="Introducere Date" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IntroducereDate.aspx.cs" Inherits="Aplicatie_Salarizare_Proiect.IntroducereDate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: #FFFF99; padding: 40px; border: 2px solid #000; width: 600px; margin: 30px auto; font-family: Arial;">
        <h2 style="font-weight: bold; text-align: center;">INTRODUCERE DATE ANGAJAȚI</h2>
        <br />
        <table style="width: 100%; border-spacing: 5px;">
            <tr>
                <td>Nume:</td>
                <td><asp:TextBox ID="txtNume" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Prenume:</td>
                <td><asp:TextBox ID="txtPrenume" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Funcție:</td>
                <td><asp:TextBox ID="txtFunctie" runat="server" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Salar Bază:</td>
                <td><asp:TextBox ID="txtSalarBaza" runat="server" AutoPostBack="true" OnTextChanged="CalculSalariu_Changed">0</asp:TextBox></td>
            </tr>
            <tr>
                <td>Spor (%):</td>
                <td><asp:TextBox ID="txtSpor" runat="server" AutoPostBack="true" OnTextChanged="CalculSalariu_Changed">0</asp:TextBox></td>
            </tr>
            <tr>
                <td>Premii Brute:</td>
                <td><asp:TextBox ID="txtPremii" runat="server" AutoPostBack="true" OnTextChanged="CalculSalariu_Changed">0</asp:TextBox></td>
            </tr>
            <tr>
                <td>Rețineri:</td>
                <td><asp:TextBox ID="txtRetineri" runat="server" AutoPostBack="true" OnTextChanged="CalculSalariu_Changed">0</asp:TextBox></td>
            </tr>
        </table>
        
        <hr style="border: 1px solid #000;" />
        <div style="background-color: #ffffff; padding: 15px; border: 1px dashed #333;">
            <p>Total Brut: <asp:Label ID="lblTotalBrut" runat="server" Font-Bold="true">0</asp:Label> RON</p>
            <p>CAS (25%): <asp:Label ID="lblCAS" runat="server">0</asp:Label> RON</p>
            <p>CASS (10%): <asp:Label ID="lblCASS" runat="server">0</asp:Label> RON</p>
            <p>Impozit (10%): <asp:Label ID="lblImpozit" runat="server">0</asp:Label> RON</p>
            <h3 style="color: red; border-top: 1px solid #ff0000; padding-top: 10px;">
                VIRAT CARD: <asp:Label ID="lblViratCard" runat="server">0</asp:Label> RON
            </h3>
        </div>
        <br />
        <asp:Button ID="btnAdauga" runat="server" Text="ADAUGA ANGAJAT" OnClick="btnAdauga_Click" 
            BackColor="#4A76A8" ForeColor="White" Font-Bold="true" Width="100%" Height="45px" />
    </div>
</asp:Content>