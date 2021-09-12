using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_Demo_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologeado"] != null)
            {
                string usuariologeado = Session["usuariologeado"].ToString();
                lblBienvenida.Text = "Bienvenid@ " + usuariologeado;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuariologeado");
            Response.Redirect("Login.aspx");
        }
    }
}