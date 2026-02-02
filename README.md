# Sistem de Management Salarizare (ASP.NET Web Forms)

Acesta este un proiect educațional realizat în **C#** și **ASP.NET Web Forms** pentru gestionarea angajaților și calculul automat al salariilor.

## 🚀 Funcționalități principale
- **Introducere Date:** Formular cu calcul automat în timp real pentru CAS, CASS și Impozit.
- **Calcul Salarial:** Determinarea sumei brute și a sumei "Virat Card" pe baza salariului de bază, sporurilor și premiilor.
- **Rapoarte:** Vizualizarea statului de plată sub formă de tabel (GridView) cu calcularea totalului general.
- **Bază de date:** Stocarea permanentă a angajaților folosind SQL Server.

## 🛠️ Tehnologii utilizate
- **Frontend:** ASPX (HTML/CSS Controls)
- **Backend:** C# (Code-behind)
- **Bază de date:** SQL Server (LocalDB)
- **Arhitectură:** Master Pages pentru design unitar

## 📖 Cum se utilizează
1. Se deschide fișierul `.sln` în Visual Studio.
2. Se rulează proiectul (F5).
3. În pagina de **Introducere Date**, se completează câmpurile (Calculul se face automat la ieșirea dintr-o căsuță de text).
4. Se apasă **Adăugă Angajat** pentru salvare.
5. În pagina de **Rapoarte**, se folosește butonul **Refresh** pentru a vedea datele actualizate sau **Șterge Tot** pentru resetarea bazei de date.
