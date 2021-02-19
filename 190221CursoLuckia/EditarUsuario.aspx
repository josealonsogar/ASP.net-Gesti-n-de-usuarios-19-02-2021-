<%@ Page Title="Editar usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="_190221CursoLuckia.EditarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="mt-3">Editar usuario</h2>
    <hr />
    <div class="container m-5">
        <table style="width: 100%">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="textBoxNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxApellidos" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Dirección"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxDireccion" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <hr />

    <div style: align="center">
        <asp:Button Text="Editar" runat="server" ID="btnEditUser" name="btnEditUser" OnClick="btnEditUser_Click" />
    </div>
</asp:Content>
