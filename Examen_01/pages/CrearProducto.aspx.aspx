<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearProducto.aspx.aspx.cs" Inherits="Examen_01.pages.CrearProducto_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Crear Producto</h2>

    <div>

        <div>
            <span>Nombre del Producto</span>
            <asp:TextBox ID="TextNombre" runat="server" CssClass="form-control"></asp:TextBox>

        </div>



        <div>
            <span>Cantidad</span>
            <asp:TextBox ID="TexCantidad" runat="server" CssClass="form-control"></asp:TextBox>

        </div>


        <div>
            <span>Precio Unitario</span>
            <asp:TextBox ID="TextPreciounitario" runat="server" CssClass="form-control"></asp:TextBox>

        </div>



         <div>
             <asp:Button ID="BtnAgregar" runat="server" Text="AGREGAR PRODUCTO"
                 BackColor="Blue" ForeColor="White" CssClass="btn btn-primary"
                 OnClick="BtnAgregar_Click"/>

             </div>

              <div>
                  <a href="ListaProductos.aspx" class="btn btn-default">Regresar a Lista </a>

              </div>




    </div>

</asp:Content>
