<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="notificacionE.aspx.cs" Inherits="ExamenAmpli_HowardJ.notificacionE" %>
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
                <br />
                <div class='welcome'>Dato Eliminado Correctamente</div>
                <br />
                <br />
                <div>
                    <asp:Button class='ghost-round full-width' ID="BRegresarM" runat="server" OnClick="BRegresarM_Click" Text="REGRESAR" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
