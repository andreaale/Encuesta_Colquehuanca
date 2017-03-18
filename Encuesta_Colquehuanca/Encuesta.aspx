<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="Encuesta_Colquehuanca.Encuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
            width: 196px;
        }
        .auto-style2 {
            height: 29px;
            width: 168px;
        }
        .auto-style3 {
            width: 168px;
        }
        .auto-style4 {
            height: 29px;
            width: 328px;
        }
        .auto-style5 {
            width: 328px;
        }
        .auto-style6 {
            width: 196px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Encuesta</h2>
        <h3>¿Cual es Tu Curso Favorito?</h3>
        <table style="width: 80%; margin: 1em auto;">
            <tr>
                <td class="auto-style4">CURSOS</td>
                <td class="auto-style2">VOTOS</td>
                <td class="auto-style2">PORCENTAJE</td>
                <td class="auto-style1">BARRA</td>
            </tr>
            <tr>
                <td class="auto-style5" rowspan="4">
                    <asp:RadioButtonList ID="rbtnListCursos" runat="server">
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtVotosRedes" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeRedes" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtVotosWeb" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeWeb" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtVotosBaseDatos" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeBaseDatos" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtVotosIngles" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeIngles" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Total de Votos:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTotalVotos" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeTotal" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnVotar" runat="server" Text="Votar" OnClick="btnVotar_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            </table>
        
    </div>
    </form>
</body>
</html>
