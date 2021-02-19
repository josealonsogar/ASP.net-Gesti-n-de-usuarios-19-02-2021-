<%@ Page Title="Añadir usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="_190221CursoLuckia.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="background-color: darkred; height: 50px">
        <h1 style="color: antiquewhite; margin-left: 10px; margin-top: 10px; vertical-align:central">Añadir nuevo usuario</h1>
    </div>
    <hr />
    <div class="container m-5">
        <table class="table" style="width: 100%">
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
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textBoxPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <hr />

    <div style: align="center">
        <asp:Button BackColor="DarkRed" ForeColor="AntiqueWhite" Text="Añadir" runat="server" ID="btnAddUser" name="btnAddUser" class="btn" OnClick="btnAddUser_Click1"/>
    </div>

</asp:Content>

