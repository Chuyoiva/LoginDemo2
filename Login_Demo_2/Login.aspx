<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_Demo_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link href="Resources/CSS/Style.css" rel="stylesheet" />

</head>
<body>
    <div class="wrapper">
        <div class="formcontent">
            <form id="login_form" runat="server">
                <div class="form-control">
                    <div class ="text-center mb-5">
                        <asp:Label  ID="lblBienvenida" runat="server" Text="Bienvenido al Sistema" class="h3"></asp:Label>
                    </div>
                    <div>
                        <asp:Label Text="Usuario:" runat="server" ID="lblUsuario"/>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtUsername" placeholder="Usuario / email"/>
                    </div>
                    <div>
                        <asp:Label Text="Contraseña" ID="lblContraseña" runat="server" />
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" placeholder="Contraseña" TextMode="Password"/>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button Text="Ingresar" ID="btnSignIn" CssClass="btn btn-primary btn-dark" runat="server" OnClick="btnSignIn_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>
