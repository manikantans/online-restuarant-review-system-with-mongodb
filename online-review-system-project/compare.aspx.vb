Imports System.Web
Imports System.Web.UI
Imports System.Windows
Imports System.Data
Imports System.Data.SqlClient

Partial Class compare
    Inherits System.Web.UI.Page


    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged

        Label1.Text = DropDownList1.SelectedItem.ToString

        SqlDataSource2.SelectCommand = "SELECT rest_id, rest_name, rest_image, rest_loc, rest_desc, food, clean, service, price, ratings, reviews FROM restaurant.restd WHERE rest_name='" + Label1.Text + "'"
        SqlDataSource2.DataBind()
        DataList1.Visible = True

    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        DataList1.Visible = False
        DataList2.Visible = False

    End Sub



    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        Label2.Text = DropDownList2.SelectedItem.ToString

        SqlDataSource4.SelectCommand = "SELECT rest_id, rest_name, rest_image, rest_loc, rest_desc, food, clean, service, price, ratings, reviews FROM restaurant.restd WHERE rest_name='" + Label2.Text + "'"
        SqlDataSource4.DataBind()
        DataList1.Visible = True
        DataList2.Visible = True

    End Sub
    
End Class
