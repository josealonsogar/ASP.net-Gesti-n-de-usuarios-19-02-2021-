<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_190221CursoLuckia._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: darkred">
        <h1 style="color: antiquewhite">App Gestión de Usuarios</h1>
        <p class="lead" style="color: antiquewhite">Aplicación de gestión de usuarios para el curso de formación de Luckia.</p>
    </div>

    <h1><a runat="server" href="~/ListaUsuarios">Lista de usuarios</a></h1>
    <div>
    <asp:GridView PageSize="5" AllowPaging="true" class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" ItemStyle-Width="200px"/>
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" SortExpression="apellidos" ItemStyle-Width="200px"/>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ItemStyle-Width="150px"/>
            <asp:BoundField DataField="direccion" HeaderText="Dirección" SortExpression="direccion" ItemStyle-Width="150px"/>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
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

    <div class="row">
        <div class="col-md-4">
            <h2><a runat="server" href="~/Usuarios">Añadir usuario</a></h2>
            <p>
                Añade un nuevo usuario a la base de datos.
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
