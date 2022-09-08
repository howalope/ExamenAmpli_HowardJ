<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="dias.aspx.cs" Inherits="ExamenAmpli_HowardJ.dias" %>
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
                    <div class='subtitle'>Ingrese el día</div>
                    <asp:TextBox type='text' placeholder='día' class='input-line full-width' runat="server" ID="TDia"></asp:TextBox>                    
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BAgregarD" runat="server" OnClick="BAgregarD_Click" Text="AGREGAR DIA" />
                    </div>
                    <br /> 
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BEliminarD" runat="server" OnClick="BEliminarD_Click" Text="ELIMINAR DIA" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
