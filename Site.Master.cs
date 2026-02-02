using System;

namespace Aplicatie_Salarizare_Proiect
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCeas.Text = DateTime.Now.ToString("MM/dd/yyyy h:mm:ss tt"); 
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblCeas.Text = DateTime.Now.ToString("MM/dd/yyyy h:mm:ss tt");
        }
    }
}