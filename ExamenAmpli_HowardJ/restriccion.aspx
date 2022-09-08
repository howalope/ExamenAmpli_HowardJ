<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="restriccion.aspx.cs" Inherits="ExamenAmpli_HowardJ.restriccion" %>

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
                    <div class='subtitle'>Ingrese el ID de la placa</div>
                    <asp:TextBox type='text' placeholder='id placa' class='input-line full-width' runat="server" ID="TidP"></asp:TextBox>
                    <div class='subtitle'>Ingrese el ID del día de la restricción</div>
                    <asp:TextBox type='text' placeholder='id día' class='input-line full-width' runat="server" ID="TidD"></asp:TextBox>
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BAgregarR" runat="server" OnClick="BAgregarR_Click" Text="AGREGAR RESTRICCION" />
                    </div>
                    <br />
                    <div class='subtitle'>Ingrese el ID de la restricción a eliminar</div>
                    <asp:TextBox type='text' placeholder='id restricción' class='input-line full-width' runat="server" ID="TidR"></asp:TextBox>
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BEliminarR" runat="server" OnClick="BEliminarR_Click" Text="ELIMINAR RESTRICCION" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
