<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="altajugador.aspx.vb" Inherits="projecteJoc.altajugador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Donar d&#39;alta jugador</p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="email" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                Email:
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="z-index: 1; left: 93px; top: 237px; position: absolute"></asp:TextBox>
                <br />
                <br />
                Nom:
                <asp:TextBox ID="nomTextBox" runat="server" 
                    style="z-index: 1; left: 94px; top: 279px; position: absolute" 
                    Text='<%# Bind("nom") %>' />
                <br />
                <br />
                Cognom1:
                <asp:TextBox ID="cognom1TextBox" runat="server" Text='<%# Bind("cognom1") %>' />
                <br />
                <br />
                Cognom2:
                <asp:TextBox ID="cognom2TextBox" runat="server" Text='<%# Bind("cognom2") %>' />
                <br />
                <br />
                Data de naixement:
                <asp:TextBox ID="data_naixementTextBox" runat="server" 
                    Text='<%# Bind("data_naixement") %>' Visible="False" Width="65px" />
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <br />
                Companyia:
                <asp:TextBox ID="companyiaTextBox" runat="server" 
                    Text='<%# Bind("companyia") %>' />
                <br />
                <br />
                Telèfon:
                <asp:TextBox ID="telefonTextBox" runat="server" 
                    style="z-index: 1; left: 103px; top: 696px; position: absolute; width: 127px; height: 23px" 
                    Text='<%# Bind("telefon") %>' />
                <br />
                <br />
                Número de nivell:
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="codi_nivell" 
                    DataValueField="codi_nivell">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [codi_nivell] FROM [Nivell]"></asp:SqlDataSource>
                <br />
                <asp:TextBox ID="dia_iniciTextBox" runat="server" 
                    Text='<%# Bind("dia_inici") %>' Visible="False" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Donar d'alta" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                    CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                nom:
                <asp:TextBox ID="nomTextBox" runat="server" Text='<%# Bind("nom") %>' />
                <br />
                cognom1:
                <asp:TextBox ID="cognom1TextBox" runat="server" Text='<%# Bind("cognom1") %>' />
                <br />
                cognom2:
                <asp:TextBox ID="cognom2TextBox" runat="server" Text='<%# Bind("cognom2") %>' />
                <br />
                data_naixement:
                <asp:TextBox ID="data_naixementTextBox" runat="server" 
                    Text='<%# Bind("data_naixement") %>' />
                <br />
                companyia:
                <asp:TextBox ID="companyiaTextBox" runat="server" 
                    Text='<%# Bind("companyia") %>' />
                <br />
                telefon:
                <asp:TextBox ID="telefonTextBox" runat="server" Text='<%# Bind("telefon") %>' />
                <br />
                numero_nivell:
                <asp:TextBox ID="numero_nivellTextBox" runat="server" 
                    Text='<%# Bind("numero_nivell") %>' />
                <br />
                dia_inici:
                <asp:TextBox ID="dia_iniciTextBox" runat="server" 
                    Text='<%# Bind("dia_inici") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                nom:
                <asp:Label ID="nomLabel" runat="server" Text='<%# Bind("nom") %>' />
                <br />
                cognom1:
                <asp:Label ID="cognom1Label" runat="server" Text='<%# Bind("cognom1") %>' />
                <br />
                cognom2:
                <asp:Label ID="cognom2Label" runat="server" Text='<%# Bind("cognom2") %>' />
                <br />
                data_naixement:
                <asp:Label ID="data_naixementLabel" runat="server" 
                    Text='<%# Bind("data_naixement") %>' />
                <br />
                companyia:
                <asp:Label ID="companyiaLabel" runat="server" Text='<%# Bind("companyia") %>' />
                <br />
                telefon:
                <asp:Label ID="telefonLabel" runat="server" Text='<%# Bind("telefon") %>' />
                <br />
                numero_nivell:
                <asp:Label ID="numero_nivellLabel" runat="server" 
                    Text='<%# Bind("numero_nivell") %>' />
                <br />
                dia_inici:
                <asp:Label ID="dia_iniciLabel" runat="server" Text='<%# Bind("dia_inici") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Jugador]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
