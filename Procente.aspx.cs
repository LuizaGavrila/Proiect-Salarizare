using System;
using System.Web.UI;

namespace Aplicatie_Salarizare_Proiect
{
    public partial class Procente : Page
    {
        protected void btnSalveazaProcente_Click(object sender, EventArgs e)
        {
            Application["CAS"] = txtCAS.Text;
            Application["CASS"] = txtCASS.Text;
            Application["Impozit"] = txtImpozit.Text;
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Procente salvate!');", true);
        }
    }
}