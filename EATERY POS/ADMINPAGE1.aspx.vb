
Partial Class FORGOTPASSWORD
    Inherits System.Web.UI.Page

    
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncheckorders.Click
        Response.Redirect("ADMINPAGE4.aspx")
    End Sub

    Protected Sub btnemployee_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnemployee.Click
        Response.Redirect("ADMINPAGE2.aspx")
    End Sub

    Protected Sub btninsertitem_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btninsertitem.Click
        Response.Redirect("ADMINPAGE3.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbladmin.Text = Session("LASTNAME")
    End Sub

    Protected Sub btnlogoutadmin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogoutadmin.Click
        Response.Redirect("HOMEPAGE.aspx")
    End Sub
End Class
