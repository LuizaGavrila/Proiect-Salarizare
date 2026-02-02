using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Aplicatie_Salarizare_Proiect
{
    public partial class IntroducereDate : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CalculSalariu_Changed(object sender, EventArgs e)
        {
            try
            {
                decimal salar = decimal.Parse(txtSalarBaza.Text);
                decimal spor = decimal.Parse(txtSpor.Text);
                decimal premii = decimal.Parse(txtPremii.Text);
                decimal retineri = decimal.Parse(txtRetineri.Text);

                // Calcule brute
                decimal totalBrut = salar + (salar * spor / 100) + premii;
                decimal cas = totalBrut * 0.25m;
                decimal cass = totalBrut * 0.10m;
                decimal impozit = (totalBrut - cas - cass) * 0.10m;
                decimal viratCard = totalBrut - cas - cass - impozit - retineri;

                // Afișare rezultate
                lblTotalBrut.Text = Math.Round(totalBrut).ToString();
                lblCAS.Text = Math.Round(cas).ToString();
                lblCASS.Text = Math.Round(cass).ToString();
                lblImpozit.Text = Math.Round(impozit).ToString();
                lblViratCard.Text = Math.Round(viratCard).ToString();
            }
            catch
            {
                
            }
        }

        protected void btnAdauga_Click(object sender, EventArgs e)
        {
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DB_Salarii"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connString))
                {
                   
                    string sql = "INSERT INTO Angajati (Nume, Prenume, Functie, SalarBaza, ViratCard) VALUES (@n, @p, @f, @s, @v)";

                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@n", txtNume.Text);
                    cmd.Parameters.AddWithValue("@p", txtPrenume.Text);
                    cmd.Parameters.AddWithValue("@f", txtFunctie.Text);
                    cmd.Parameters.AddWithValue("@s", decimal.Parse(txtSalarBaza.Text));
                    cmd.Parameters.AddWithValue("@v", decimal.Parse(lblViratCard.Text));

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Datele pentru " + txtNume.Text + " au fost salvate!');", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Eroare la salvare: " + ex.Message.Replace("'", "") + "');</script>");
            }
        }
    }
}