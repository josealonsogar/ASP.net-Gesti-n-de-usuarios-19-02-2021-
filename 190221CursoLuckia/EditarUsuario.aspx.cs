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
    public partial class EditarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditUser_Click(object sender, EventArgs e)
        {
            string nombre = textBoxNombre.Text;
            string apellidos = textBoxApellidos.Text;
            string email = textBoxEmail.Text;
            string direccion = textBoxDireccion.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdventureWorksLT2017"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE dbo.Usuario " +
                "SET nombre = @param1, apellidos = @param2, direccion = @param4 " +
                "WHERE email = @param3";

            cmd.Parameters.AddWithValue("@param1", nombre);
            cmd.Parameters.AddWithValue("@param2", apellidos);
            cmd.Parameters.AddWithValue("@param3", email);
            cmd.Parameters.AddWithValue("@param4", direccion);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}