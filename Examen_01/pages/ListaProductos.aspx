<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="Examen_01.pages.ListaProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <div>
        <a href="CrearProducto.aspx.aspx" class="btn btn-default">Agregar Nuevo Producto </a>

    </div>



    <div class="primary-container">



        <asp:GridView ID="GvListaProductos" runat="server" AutoGenerateColumns="true" CssClass="table table-striped"></asp:GridView>


    </div>

</asp:Content>
