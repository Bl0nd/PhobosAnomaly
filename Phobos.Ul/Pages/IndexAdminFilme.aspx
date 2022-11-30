<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdmin.Master" AutoEventWireup="true" CodeBehind="IndexAdminFilme.aspx.cs" Inherits="Phobos.Ul.Pages.IndexAdminFilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="base">
        <h1 id="movie">Movie</h1>
        <asp:GridView runat="server" ID="dgv2" GridLines="None" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="Id" OnRowCommand="dgv2_RowCommand" OnRowEditing="dgv2_RowEditing" OnRowCancelingEdit="dgv2_RowCancelingEdit" OnRowUpdating="dgv2_RowUpdating" OnRowDeleting="dgv2_RowDeleting">
            <Columns>

                <%--template Titulo--%>
                <asp:TemplateField HeaderText="Filme">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Titulo") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTituloFilme" runat="server" MaxLength="50" Text='<%#Eval("Titulo") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtTituloFilmeFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Genero--%>
                <asp:TemplateField HeaderText="Gênero">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Genero") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtGeneroFilme" runat="server" MaxLength="50" Text='<%#Eval("Genero") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtGeneroFilmeFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Produtora--%>
                <asp:TemplateField HeaderText="Produtora">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Produtora") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtProdutoraFilme" runat="server" MaxLength="50" Text='<%#Eval("Produtora") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtProdutoraFilmeFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Imagem--%>
                <asp:TemplateField HeaderText="Imagem">
                    <ItemTemplate>
                        <asp:Image ImageUrl='<%#Eval("UrlImagem")%>' Width="100" Height="100" runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:FileUpload ID="fUp1" runat="server" Text="Selecione a Imagem" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="fUp1" runat="server" Text="Selecione a Imagem" />
                    </FooterTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>

                <%--radio buttons--%>
                <asp:TemplateField HeaderText="Classificação">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Classificacao") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:RadioButtonList ID="rbl1" runat="server">
                            <asp:ListItem Value="1" Text=" Livre" />
                            <asp:ListItem Value="2" Text=" +18" />
                        </asp:RadioButtonList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:RadioButtonList ID="rbl1" runat="server">
                            <asp:ListItem Value="1" Text=" Livre" />
                            <asp:ListItem Value="2" Text=" +18" />
                        </asp:RadioButtonList>
                    </FooterTemplate>
                </asp:TemplateField>

                <%--buttons--%>
                <asp:TemplateField HeaderText="Opções">
                    <ItemTemplate>
                        <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/img/edit.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />
                        <asp:ImageButton ID="btnExcluir" runat="server" ImageUrl="~/img/delete.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja relmente eliminar este registro??'))return false" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ID="btnSalvar" runat="server" ImageUrl="~/img/save.png" ToolTip="Salvar" Width="30" Height="30" CommandName="Update" />
                        <asp:ImageButton ID="btnCancelar" runat="server" ImageUrl="~/img/cancel.png" ToolTip="Cancelar" Width="30" Height="30" CommandName="Cancel" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ID="btnAdicionar" runat="server" ImageUrl="~/img/add.png" ToolTip="Adicionar" Width="30" Height="30" CommandName="Add" />
                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <br />
        <asp:Label runat="server" ID="lblMessage" />
    </div>





</asp:Content>
