using Examen_01.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_01.pages
{
    public partial class CrearProducto_aspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {

            // Captura en variables locales los valores dijitados
            
            string nombre = TextNombre.Text.Trim();
            int Cantidad = int.Parse(TexCantidad.Text.Trim());
            decimal PrecioUnitario = decimal.Parse(TextPreciounitario.Text.Trim());
            DateTime fechaRegistro = DateTime.Now;


            try
            {

                using (PV_Examen01Entities db = new PV_Examen01Entities())
            {
                    db.spCrearProducto(nombre, Cantidad, PrecioUnitario,fechaRegistro);
            }

            }
            catch (Exception)
            {

                Response.Redirect("~/Pages/Error.aspx");
            }

            Response.Redirect("~/Pages/ExitoCrearProducto.aspx");

        }
    }
}