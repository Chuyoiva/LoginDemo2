<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Login_Demo_2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link href="Resources/CSS/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="formulario_index" class="form-control" runat="server">
        <div>
            <asp:Label CssClass="h1" ID="lblBienvenida" Text="Bienvenid@" runat="server" />
        </div>
        <div>
            <asp:Button Text="Cerrar Sesion" runat="server" ID="btnCerrar"  CssClass="btn btn-dark" OnClick="btnCerrar_Click" />
        </div>
    </form>
</body>
</html>
