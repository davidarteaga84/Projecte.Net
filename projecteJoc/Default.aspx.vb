Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        FormView1.Visible = True
        Button2.Visible = True
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        If Not Session("jugador") Is Nothing Then
            Dim cookieNivell As HttpCookie(DropDownList1.SelectedValue,"nivell")
            Server.Transfer("jugar.aspx")
        Else
            Server.Transfer("altajugador.aspx")
        End If
    End Sub
End Class