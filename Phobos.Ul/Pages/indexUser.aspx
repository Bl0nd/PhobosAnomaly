<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultUser.Master" AutoEventWireup="true" CodeBehind="indexUser.aspx.cs" Inherits="Phobos.Ul.Pages.indexUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="base">
              <h1 id="user">Users</h1>
        <asp:GridView runat="server" ID="dgv1" GridLines="None" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="Name" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="descricao" HeaderText="Description type user" />
            </Columns>

        </asp:GridView>

    </div>

            <div class="base">
                <h1 id="movie">Movie</h1>
        <asp:GridView runat="server" ID="dgv2" GridLines="None" AutoGenerateColumns="false" BackColor="Silver">
            <Columns>
                <asp:BoundField DataField="titulo" HeaderText="Title" />
                <asp:BoundField DataField="genero" HeaderText="Genere" />
                <asp:BoundField DataField="produtora" HeaderText="Producer" />
                <asp:BoundField DataField="descricao" HeaderText="Description" />
                <asp:ImageField DataImageUrlField="urlImagem" HeaderText="Image" controlStyle-Width="150" ControlStyle-Height="150" />
            </Columns>

        </asp:GridView>

    </div>

</asp:Content>
