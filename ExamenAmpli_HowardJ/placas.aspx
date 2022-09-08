<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="placas.aspx.cs" Inherits="ExamenAmpli_HowardJ.placas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='bold-line'></div>
    <div class='container'>
        <div class='window'>
            <div class='overlay'>
            </div>
            <div class='content'>
                <div class='welcome'>SIREVE</div>
                <div class='subtitle'>Sistema de Revisión Vehicular</div>
                <div class='input-fields'>
                    <div class='subtitle'>Ingrese la terminación de la placa a agregar</div>
                    <asp:TextBox type='text' placeholder='terminación' class='input-line full-width' runat="server" ID="TTerminacion"></asp:TextBox>                    
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BAgregarP" runat="server" OnClick="BAgregarP_Click" Text="AGREGAR PLACA" />
                    </div>
                    <br />
                    <div class='subtitle'>Ingrese el ID de la placa a eliminar</div>
                    <asp:TextBox type='text' placeholder='id placa' class='input-line full-width' runat="server" ID="TPlaca"></asp:TextBox>  
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BEliminarP" runat="server" OnClick="BEliminarP_Click" Text="ELIMINAR PLACA" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
