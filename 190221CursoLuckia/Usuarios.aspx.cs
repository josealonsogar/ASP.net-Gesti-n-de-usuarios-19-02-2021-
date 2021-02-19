using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _190221CursoLuckia
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAddUser_Click1(object sender, EventArgs e)
        {
            string nombre = textBoxNombre.Text;
            string apellidos = textBoxApellidos.Text;
            string email = textBoxEmail.Text;
            string direccion = textBoxDireccion.Text;
            string password = textBoxPassword.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdventureWorksLT2017"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO dbo.Usuario(nombre, apellidos, email, direccion, password) " +
                "VALUES (@param1, @param2, @param3, @param4, @param5)";

            cmd.Parameters.AddWithValue("@param1", nombre);
            cmd.Parameters.AddWithValue("@param2", apellidos);
            cmd.Parameters.AddWithValue("@param3", email);
            cmd.Parameters.AddWithValue("@param4", direccion);
            cmd.Parameters.AddWithValue("@param5", password);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}