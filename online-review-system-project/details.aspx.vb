Imports DevExpress.Web.ASPxRatingControl

Partial Class details
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        
        DataList1.Visible = False
        Label11.Visible = False
        Panel2.Visible = False
        Panel1.Visible = True
        Label5.Visible = True
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Label1.Text = DropDownList1.SelectedItem.ToString

        SqlDataSource1.SelectCommand = "SELECT [rest_id], [rest_name], [rest_image], [rest_loc], [ratings], [rest_desc], [reviews], [map] FROM [map] WHERE rest_name='" + Label1.Text + "'"
        SqlDataSource1.DataBind()
        DataList1.Visible = True

    End Sub

    

    Protected Sub ASPxRatingControl2_ItemClick(sender As Object, e As RatingControlItemEventArgs) Handles ASPxRatingControl2.ItemClick
        Label6.Text = ASPxRatingControl2.Value.ToString
        ASPxRatingControl1.Value = Val(Label6.Text)
        Label10.Text = ASPxRatingControl1.Value.ToString
    End Sub

    Protected Sub ASPxRatingControl3_ItemClick(sender As Object, e As RatingControlItemEventArgs) Handles ASPxRatingControl3.ItemClick
        Label7.Text = ASPxRatingControl3.Value.ToString
        ASPxRatingControl1.Value = (Val(Label6.Text) + Val(Label7.Text)) / 2
        Label10.Text = ASPxRatingControl1.Value.ToString
    End Sub

    Protected Sub ASPxRatingControl4_ItemClick(sender As Object, e As RatingControlItemEventArgs) Handles ASPxRatingControl4.ItemClick
        Label8.Text = ASPxRatingControl4.Value.ToString
        ASPxRatingControl1.Value = (Val(Label6.Text) + Val(Label7.Text) + Val(Label8.Text)) / 3
        Label10.Text = ASPxRatingControl1.Value.ToString
    End Sub

    Protected Sub ASPxRatingControl5_ItemClick(sender As Object, e As RatingControlItemEventArgs) Handles ASPxRatingControl5.ItemClick
        Label9.Text = ASPxRatingControl5.Value.ToString
        ASPxRatingControl1.Value = (Val(Label6.Text) + Val(Label7.Text) + Val(Label8.Text) + Val(Label9.Text)) / 4
        Label10.Text = ASPxRatingControl1.Value.ToString
    End Sub

    Protected Sub ASPxRatingControl1_ItemClick(sender As Object, e As RatingControlItemEventArgs) Handles ASPxRatingControl1.ItemClick

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If username.Text = "mangai" And pwd.Text = "mangai" Then
            Label2.Visible = False
            Label5.Text = "Welcome  " + username.Text
            Panel1.Visible = False
            Panel2.Visible = True
            DataList1.Visible = True
        Else
            Label11.Text = "username or password is not correct"
            Label5.Text = "Welcome  " + username.Text
        End If
       
    End Sub

    
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Session("signup") = "signup"
        Response.Redirect("user.aspx")
    End Sub
End Class
