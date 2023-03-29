
Partial Class FORGOTPASSWORD
    Inherits System.Web.UI.Page

    

    Protected Sub btncheck_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncheck.Click
        DataBind()


    End Sub

    Protected Sub GVFORGOTPASS1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVFORGOTPASS1.SelectedIndexChanged
        lblsecurityquestionforgot.Text = GVFORGOTPASS1.SelectedRow.Cells(3).Text
    End Sub

    Protected Sub btnhome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnhome.Click
        Response.Redirect("HOMEPAGE.aspx")
    End Sub
End Class
