<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Phobos.Ul.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/media.css" />
    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet' />
    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <!-- AOS CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <link rel="shortcut icon" href="img/icon.png" type="image/x-icon" />
    <title>Login PhobosAnomaly</title>
</head>
<body>

    <header>
        <nav>
            <div class="menu">
                <a href="#home" class="logo">
                    <i class='bx bxs-hot'></i>
                    <span>Enxame</span>
                </a>
                <ul class="navbar">
                    <i class='bx bx-chevron-down'></i></a>
                         <li><a href="#user">User</a></li>
                    <li><a href="#movie">Movie</a></li>
                    <asp:Button><a href="login.aspx">login</a></asp:Button>
                </ul>
            </div>
        </nav>

    </header>

    <form id="form1" runat="server">
        <section id="login">
            <h4>Login</h4>
            <h5>Authentication</h5>
            <div class="contactC">
                <ul class="contactI">
                    <li>
                        <asp:TextBox ID="txtNome" runat="server" AutoCompleteType="Disabled" MaxLength="150" Width="50%" Placeholder="Nome:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredNome" runat="server" ErrorMessage="Digite o Nome do usuario !!" ForeColor="Red" ControlToValidate="txtNome"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <asp:TextBox ID="txtSenha" runat="server" AutoCompleteType="Disabled" MaxLength="6" TextMode="Password" Width="50%" Placeholder="Senha:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredSenha" runat="server" ErrorMessage="Digite a senha com 6 digitos !!" ForeColor="Red" ControlToValidate="txtSenha"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btnDefault" OnClick="btnEntrar_Click" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btnDefault" OnClick="btnCancelar_Click" />
                    </li>
                    <li>
                        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                    </li>
                </ul>
            </div>
            <!-- scripts -->
            <script src="script/jquery-3.6.0.min.js"></script>
            <!-- swiper -->
            <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
            <!-- AOS JS -->
            <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
            <!-- script local -->
            <script src="script/script.js"></script>
    </form>
    </section>
                <!-- footer -->
    <footer>
        <div class="footerC">
            <ul>
                <li><a href="index.aspx#home">home</a></li>
                <li><a href="index.aspx#about">about</a></li>
                <li><a href="index.aspx#emphasis">emphasis</a></li>
                <li><a href="index.aspx#products">products</a></li>
                <li><a href="index.aspx#services">services</a></li>
            </ul>
            <ul>
                <li><a href="index.aspx#domain">Domain</a></li>
                <li><a href="index.aspx#localization">Localization</a></li>
                <li><a href="index.aspx#contact">contact</a></li>
            </ul>
            <a href="#home" class="logo">
                <i class='bx bxs-hot'></i>
                <span>Phobos</span>
            </a>
            <h5>&copy;; Copyright all rights reserved 2012</h5>
        </div>
    </footer>
</body>
</html>
