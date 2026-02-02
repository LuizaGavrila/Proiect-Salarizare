using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Aplicatie_Salarizare_Proiect
{
    public partial class Rapoarte : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                IncarcaDate();
            }
        }

        // Metoda pentru butonul de Refresh
        public void btnIncarca_Click(object sender, EventArgs e)
        {
            IncarcaDate();
        }

        // Metoda pentru butonul de Ștergere Totală
        public void btnStergeTot_Click(object sender, EventArgs e)
        {
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DB_Salarii"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connString))
                {
                    SqlCommand cmd = new SqlCommand("DELETE FROM Angajati", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                // Reîmprospătare tabel 
                IncarcaDate();
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Baza de date a fost golită!');", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Eroare la ștergere: " + ex.Message.Replace("'", "") + "');</script>");
            }
        }

        // Funcția principală care aduce datele din SQL în tabel
        private void IncarcaDate()
        {
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["DB_Salarii"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connString))
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Angajati", con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    gvAngajati.DataSource = dt;
                    gvAngajati.DataBind();

                    // Calculăm suma totală a salariilor de pe card
                    decimal total = 0;
                    foreach (DataRow row in dt.Rows)
                    {
                        if (row["ViratCard"] != DBNull.Value)
                        {
                            total += Convert.ToDecimal(row["ViratCard"]);
                        }
                    }
                    lblTotalGeneral.Text = total.ToString("N2");
                }
            }
            catch (Exception ex)
            {
                // Afișăm eroarea dacă baza de date nu răspunde
                Response.Write("<div style='color:red;'>Eroare SQL: " + ex.Message + "</div>");
            }
        }
    }
}