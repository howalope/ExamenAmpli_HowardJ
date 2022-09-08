<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="bitacora.aspx.cs" Inherits="ExamenAmpli_HowardJ.bitacora" %>

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
                <div class='subtitle'>Sistema de Restricción Vehicular</div>
                <div class='input-fields'>
                    <div class='subtitle'>Bitácora de Cambios en Placas</div>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlBitacora">
                        <Columns>
                            <asp:BoundField DataField="ID_PLACA" HeaderText="ID_PLACA" SortExpression="ID_PLACA" />
                            <asp:BoundField DataField="NUMERO_TERMINACION" HeaderText="NUMERO_TERMINACION" SortExpression="NUMERO_TERMINACION" />
                            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlBitacora" runat="server" ConnectionString="<%$ ConnectionStrings:VEHICULOConnectionString %>" SelectCommand="SELECT * FROM [PLACA_AUDITORIA]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
