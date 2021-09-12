using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Login_Demo_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string patron = "LoginDemo2";
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string connect = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connect);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlConnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = txtUsername.Text;
            cmd.Parameters.Add("@Contraseña", SqlDbType.VarChar, 50).Value = txtPassword.Text;
            cmd.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Agregamos una sesion de usuario
                Session["usuariologeado"] = txtUsername.Text;
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                Response.Write("<script>alert('Either Username or password is incorrect.')</script>");
            }
            cmd.Connection.Close();

        }
    }
}