<%@ Page Title="Página principal" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="projecteJoc._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Sel·lecciona nivell de joc:&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="codi_nivell" 
            DataValueField="codi_nivell">
        </asp:DropDownList>
        &nbsp;
        <asp:Button ID="Button1" runat="server" Height="24px" Text="Mostrar" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [codi_nivell] FROM [Nivell]"></asp:SqlDataSource>
    </h2>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="codi_nivell" 
            DataSourceID="SqlDataSource2" Visible="False">
            <EditItemTemplate>
                codi_nivell:
                <asp:Label ID="codi_nivellLabel1" runat="server" 
                    Text='<%# Eval("codi_nivell") %>' />
                <br />
                desc_nivell:
                <asp:TextBox ID="desc_nivellTextBox" runat="server" 
                    Text='<%# Bind("desc_nivell") %>' />
                <br />
                n_elements:
                <asp:TextBox ID="n_elementsTextBox" runat="server" 
                    Text='<%# Bind("n_elements") %>' />
                <br />
                pvp:
                <asp:TextBox ID="pvpTextBox" runat="server" Text='<%# Bind("pvp") %>' />
                <br />
                dies_passar_nivell:
                <asp:TextBox ID="dies_passar_nivellTextBox" runat="server" 
                    Text='<%# Bind("dies_passar_nivell") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                codi_nivell:
                <asp:TextBox ID="codi_nivellTextBox" runat="server" 
                    Text='<%# Bind("codi_nivell") %>' />
                <br />
                desc_nivell:
                <asp:TextBox ID="desc_nivellTextBox" runat="server" 
                    Text='<%# Bind("desc_nivell") %>' />
                <br />
                n_elements:
                <asp:TextBox ID="n_elementsTextBox" runat="server" 
                    Text='<%# Bind("n_elements") %>' />
                <br />
                pvp:
                <asp:TextBox ID="pvpTextBox" runat="server" Text='<%# Bind("pvp") %>' />
                <br />
                dies_passar_nivell:
                <asp:TextBox ID="dies_passar_nivellTextBox" runat="server" 
                    Text='<%# Bind("dies_passar_nivell") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                codi_nivell:
                <asp:Label ID="codi_nivellLabel" runat="server" 
                    Text='<%# Eval("codi_nivell") %>' />
                <br />
                desc_nivell:
                <asp:Label ID="desc_nivellLabel" runat="server" 
                    Text='<%# Bind("desc_nivell") %>' />
                <br />
                n_elements:
                <asp:Label ID="n_elementsLabel" runat="server" 
                    Text='<%# Bind("n_elements") %>' />
                <br />
                pvp:
                <asp:Label ID="pvpLabel" runat="server" Text='<%# Bind("pvp") %>' />
                <br />
                dies_passar_nivell:
                <asp:Label ID="dies_passar_nivellLabel" runat="server" 
                    Text='<%# Bind("dies_passar_nivell") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:Button ID="Button2" runat="server" Text="Jugar" Visible="False" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Nivell] WHERE ([codi_nivell] = @codi_nivell)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="codi_nivell" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
<h2>
        &nbsp;</h2>
    <p>
        &nbsp;</p>
    </asp:Content>
