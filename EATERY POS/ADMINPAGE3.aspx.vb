
Partial Class FORGOTPASSWORD
    Inherits System.Web.UI.Page

    
    
    Protected Sub btnbreakfast_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnbreakfast.Click
        sqlbreakfast.Insert()
    End Sub

    Protected Sub btnlunch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlunch.Click
        sqllunch.Insert()
    End Sub

    Protected Sub btnmeryenda_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmeryenda.Click
        sqlmeryenda.Insert()
    End Sub

    Protected Sub btndinner_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndinner.Click
        sqldinner.Insert()
    End Sub

    Protected Sub btndesserts_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndesserts.Click
        sqldesserts.Insert()
    End Sub

    Protected Sub btndrinks_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndrinks.Click
        sqldrinks.Insert()
    End Sub

    Protected Sub btnadminhome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadminhome.Click
        Response.Redirect("ADMINPAGE1.aspx")
    End Sub
End Class
