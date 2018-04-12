
Partial Class user
    Inherits System.Web.UI.Page

    Protected Sub ASPxButton1_Click(sender As Object, e As EventArgs) Handles ASPxButton1.Click
        If ASPxCaptcha1.IsValid = True Then
            Label1.Visible = True
            Label1.Text = "Password has been successfully changed"
            Panel3.Visible = False
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("signup") = "signup" Then
            Panel2.Visible = False
        Else
            Panel1.Visible = False
        End If
        Label1.Visible = False
        Panel3.Visible = True
    End Sub
End Class
