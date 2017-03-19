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
            width: 228px;
        }
        .auto-style5 {
            width: 228px;
        }
        .auto-style6 {
            width: 196px;
        }
        .progress {
          width: 100%;
          height: 20px;
        }
        .progress-wrap {
          background: #f80;
          margin: 20px 0;
          overflow: hidden;
          position: relative;
  
        }
        .progress-bar {
            background: #ddd;
            left: 0;
            position: absolute;
            top: 0;
          }
        progress{
            vertical-align:central;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Encuesta</h2>
        <h3 id="titulo">¿Cual es Tu Curso Favorito?</h3>
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
                <td class="auto-style2">
                    <asp:TextBox ID="txtVotosRedes" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPorcentajeRedes" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <progress id="pbRedes" value="0" max="100.00"></progress>
                    <!--<div id="progress-wrapRedes" class="progress-wrap progress" data-progress-percent="57">
                      <div id="progress-barRedes" class="progress-bar progress" ></div>
                    </div>-->
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtVotosWeb" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeWeb" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <progress id="pbWeb" value="0" max="100.00"></progress>
                    <!--<div id="progress-wrapWeb" class="progress-wrap progress" data-progress-percent="57">
                      <div id="progress-barWeb" class="progress-bar progress"></div>
                    </div>-->
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtVotosBaseDatos" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeBaseDatos" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <progress id="pbBaseDatos" value="0" max="100.00"></progress>
                    <!--<div id="progress-wrapBaseDatos" class="progress-wrap progress" data-progress-percent="57">
                      <div id="progress-barBaseDatos" class="progress-bar progress"></div>
                    </div>-->
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtVotosIngles" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeIngles" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <progress id="pbIngles" value="0" max="100.00"></progress>
                    <!--<div id="progress-wrapIngles" class="progress-wrap progress" data-progress-percent="57">
                      <div id="progress-barIngles" class="progress-bar progress"></div>
                    </div>-->
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Total de Votos:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtTotalVotos" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPorcentajeTotal" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnVotar" runat="server" Text="Votar" OnClick="btnVotar_Click"  />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            </table>
        
    </div>
    </form>

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            
            //document.getElementById('<%=txtPorcentajeWeb.ClientID %>').value = "444";
            document.getElementById("titulo").innerHTML = '<%=txtPorcentajeRedes.Text%>';
        // on page load...
            moveProgressBar('Redes');
            /*moveProgressBar('Web');
            moveProgressBar('BaseDatos');
            moveProgressBar('Ingles');*/
        // on browser resize...
            $(window).resize(function () {
                moveProgressBar('Redes');
                /*moveProgressBar('Web');
                moveProgressBar('BaseDatos');
                moveProgressBar('Ingles');*/
            });
            
            $('#progress-wrapRedes').attr('data-progress-percent', '<%=txtPorcentajeRedes.Text.Replace(",",".")%>');
            $('#pbRedes').attr('value', '<%=txtPorcentajeRedes.Text.Replace(",",".")%>');
            $('#pbWeb').attr('value', '<%=txtPorcentajeWeb.Text.Replace(",",".")%>');
            $('#pbBaseDatos').attr('value', '<%=txtPorcentajeBaseDatos.Text.Replace(",",".")%>');
            $('#pbIngles').attr('value', '<%=txtPorcentajeIngles.Text.Replace(",",".")%>');
        // SIGNATURE PROGRESS
            function moveProgressBar(i) {
                
            //$('#pbRedes').attr('value', '<%=txtPorcentajeRedes.Text.Replace(",",".")%>');
            //$('#progress-wrap' + i).attr('data-progress-percent', '<%=txtPorcentajeRedes.Text.Replace(",",".")%>');
            var getPercent = ($('#progress-wrap' + i).data('progress-percent') / 100);
            var getProgressWrapWidth = $('#progress-wrap' + i).width();
            var progressTotal = getPercent * getProgressWrapWidth;
            var animationLength = 2500;

            // on page load, animate percentage bar to data percentage length
            // .stop() used to prevent animation queueing
            $('#progress-bar' + i).stop().animate({
                left: progressTotal
            }, animationLength);
        }
        });
    </script>

</body>
</html>
