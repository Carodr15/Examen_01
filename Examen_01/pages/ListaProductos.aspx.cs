using Examen_01.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_01.pages
{
    public partial class ListaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

			try
			{
				using (PV_Examen01Entities db = new PV_Examen01Entities())
				{
					//Mostrara el gridview de la pagina

					var Lista = db.spConsultarTodosLosProductos().ToList();

					GvListaProductos.DataSource = Lista;
					GvListaProductos.DataBind();


				}
			}
			catch (Exception)
			{

				Response.Redirect("~/Pages/Error.aspx");
			}



        }
    }
}