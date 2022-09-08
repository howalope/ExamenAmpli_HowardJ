<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="ExamenAmpli_HowardJ.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='bold-line'></div>
    <div class='container'>
        <div class='window'>
            <div class='overlay'></div>
            <div class='content'>
                <div class='welcome'>SIREVE</div>
                <div class='subtitle'>Sistema de Revisión Vehicular</div>
                <div class='subtitle'>Selecciones una Opción</div>
                <div class='input-fields'>
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BMenu1" runat="server" OnClick="BMenu1_Click" Text="PLACAS" /></div>
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BMenu2" runat="server" OnClick="BMenu2_Click" Text="DIAS" /></div>
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BMenu3" runat="server" OnClick="BMenu3_Click" Text="AGREGAR RESTRICCION" /></div>
                    <div>
                        <asp:Button class='ghost-round full-width' ID="BMenu4" runat="server" OnClick="BMenu4_Click" Text="BITACORA" /></div>

                </div>
            </div>
        </div>
</asp:Content>
