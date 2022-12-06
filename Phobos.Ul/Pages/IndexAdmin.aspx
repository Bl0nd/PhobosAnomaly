<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdmin.Master" AutoEventWireup="true" CodeBehind="IndexAdmin.aspx.cs" Inherits="Phobos.Ul.Pages.IndexAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="base">
        <h1 id="user">Users</h1>
        <asp:GridView runat="server" ID="dgv1" GridLines="None" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="idUsuario" OnRowCommand="dgv1_RowCommand" OnRowUpdating="dgv1_RowUpdating" OnRowDeleting="dgv1_RowDeleting" OnRowEditing="dgv1_RowEditing"
            OnRowCancelingEdit="dgv1_RowCancelingEdit">
            <Columns>
                <%--template Nome--%>
                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Nome") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtNomeUsuario" MaxLength="50" Text='<%#Eval("Nome") %>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="NomeUsuario"
                            runat="server"
                            ErrorMessage="Digite o nome !!"
                            ForeColor="Red"
                            ControlToValidate="txtNomeUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtNomeUsuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Email--%>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Email") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtEmailUsuario" MaxLength="50" Text='<%#Eval("Email") %>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="EmailUsuario"
                            runat="server"
                            ErrorMessage="Digite seu email !!"
                            ForeColor="Red"
                            ControlToValidate="txtEmailUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtEmailUsuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Senha--%>
                <asp:TemplateField HeaderText="Senha">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Senha") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtSenhaUsuario" MaxLength="6" Text='<%#Eval("Senha") %>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="SenhaeUsuario"
                            runat="server"
                            ErrorMessage="Digite sua senha !!"
                            ForeColor="Red"
                            ControlToValidate="txtSenhaUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtSenhaUsuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template DataNascUsuario--%>
                <asp:TemplateField HeaderText="Data Nascimento">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("DataNascUsuario") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtDataNascUsuario" MaxLength="50" Text='<%#Eval("DataNascUsuario") %>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="DataNascUsuario"
                            runat="server"
                            ErrorMessage="Digite sua data de nascimento !!"
                            ForeColor="Red"
                            ControlToValidate="txtDataNascUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtDataNascUsuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template UsuarioTp--%>
                <asp:TemplateField HeaderText="Tipo Usuario">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("UsuarioTp") %>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:RadioButtonList runat="server" ID="rbl1">
                            <asp:ListItem Value="1" Text=" Administrador" />
                            <asp:ListItem Value="2" Text=" Outros" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="rblist" runat="server" ErrorMessage="Selecione uma opção !!" ForeColor="Red" ControlToValidate="rbl1" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:RadioButtonList runat="server" ID="rbl1">
                            <asp:ListItem Value="1" Text=" Administrador" />
                            <asp:ListItem Value="2" Text=" Outros" />
                        </asp:RadioButtonList>
                    </FooterTemplate>
                </asp:TemplateField>

                <%--buttons--%>
                <asp:TemplateField HeaderText="Opções">
                    <ItemTemplate>
                        <asp:ImageButton runat="server" ID="btnEditar" ImageUrl="~/img/editB.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />
                        <asp:ImageButton runat="server" ID="btnEcluir" ImageUrl="~/img/deleteB.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja realmente eliminar este registro ??')) return false" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton runat="server" ID="btnSalvar" ImageUrl="~/img/saveB.png" ToolTip="Salvar" Width="30" Height="30" CommandName="Update" />
                        <asp:ImageButton runat="server" ID="btnCancelar" ImageUrl="~/img/cancelB.png" ToolTip="Cancelar" Width="30" Height="30" CommandName="Cancel" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton runat="server" ID="btnAdicionar" ImageUrl="~/img/addB.png" ToolTip="Adicionar" Width="30" Height="30" CommandName="Add" />
                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>


        </asp:GridView>
        <br />
        <asp:Label ID="lblMessage" ForeColor="White" runat="server" Text="Label" />
    </div>
</asp:Content>
