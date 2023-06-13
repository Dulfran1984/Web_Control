<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_registro.aspx.cs" Inherits="web_ControlAsistencia.frm_registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Control de asistencias</title>
    <link href="estilos.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <center><h1>Sistema de control de asistencia a eventos</h1></center>
        <div>
            <center>
                <div class="div2">
                    <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Ingrese su nombre" Width="200" Height="25" CssClass="cajas"></asp:TextBox>
                    <asp:TextBox ID="txt_Edad" runat="server" placeholder="Ingrese su edad" Width="200" Height="25" CssClass="cajas" Text="0"></asp:TextBox>
                    <asp:DropDownList ID="cbx_Comida" runat="server" Width="200" Height="33px" CssClass="combos">
                        <asp:ListItem>Si</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btn_Registrar" runat="server" Text="Registrar" Width="150" Height="33" CssClass="botones" OnClick="btn_Registrar_Click" />
                    <br /><br />
                    <asp:Label ID="lbl_mensaje" runat="server" Text="mensaje" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Contador de personas:" CssClass="label"></asp:Label>
                    <asp:Label ID="lbl_contador" runat="server" Text="0" CssClass="label"></asp:Label>
                    <br /><br />
                    <asp:GridView ID="dtg_Asisten" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" Width="800px">
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </div>
            </center>
        </div>
    </form>
</body>
</html>
