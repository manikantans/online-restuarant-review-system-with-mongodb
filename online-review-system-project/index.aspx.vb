
Partial Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Disposed(sender As Object, e As EventArgs) Handles Me.Disposed

    End Sub

    
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("details.aspx")
    End Sub

    
End Class
