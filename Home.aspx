<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Aplicatie_Salarizare_Proiect.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font-family: Arial, sans-serif; line-height: 1.8; color: #2c3e50; max-width: 800px;">
        <p style="font-size: 1.1em;">
            Această aplicație este un sistem informatic integrat pentru gestionarea proceselor de salarizare din cadrul unei organizații. 
            Interfața permite utilizatorilor autorizați să efectueze următoarele operațiuni principale:
        </p>
        
        <ul style="list-style-type: disc; margin-left: 30px; font-size: 1em;">
            <li>
                <strong>Gestiunea Resurselor Umane:</strong> Adăugarea angajaților noi, actualizarea funcțiilor și a salariilor de bază, precum și eliminarea înregistrărilor din baza de date.
            </li>
            <li>
                <strong>Calcul Salarial Automat:</strong> Determinarea automată a veniturilor brute, a contribuțiilor sociale (CAS, CASS), a impozitului pe venit și a sumei finale de plată (Virat Card) pe baza algoritmilor legali.
            </li>
            <li>
                <strong>Generarea Rapoartelor:</strong> Vizualizarea statului de plată centralizat și emiterea fluturașilor individuali pentru fiecare angajat.
            </li>
            <li>
                <strong>Configurarea Parametrilor:</strong> Administrarea procentelor aferente taxelor în funcție de modificările legislative curente.
            </li>
        </ul>
    </div>
</asp:Content>