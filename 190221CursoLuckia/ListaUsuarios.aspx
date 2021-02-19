<%@ Page Title="Lista de usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaUsuarios.aspx.cs" Inherits="_190221CursoLuckia.ListaUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color: darkred; height: 50px">
        <h1 style="color: antiquewhite; margin-left: 10px; margin-top: 10px; vertical-align:central">Lista de usuarios</h1>
    </div>
    <hr />
    <div>
    <asp:GridView class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" ItemStyle-Width="200px"/>
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" SortExpression="apellidos" ItemStyle-Width="200px"/>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ItemStyle-Width="150px"/>
            <asp:BoundField DataField="direccion" HeaderText="Dirección" SortExpression="direccion" ItemStyle-Width="150px"/>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorksLT2017ConnectionString %>" SelectCommand="SELECT [nombre], [apellidos], [email], [direccion], [password] FROM [Usuario]"></asp:SqlDataSource>

</asp:Content>
