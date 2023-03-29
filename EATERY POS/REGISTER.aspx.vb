
Partial Class REGISTER
    Inherits System.Web.UI.Page

    Protected Sub TextBox3_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tbfirstname.TextChanged

    End Sub

    Protected Sub btnregister1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister1.Click
        STAFFSOURCE.Insert()
        STAFFFORGOTPASSSOURCE.Insert()
        PASSWORDSDATASOURCE.Insert()
        Response.Redirect("HOMEPAGE.aspx")
    End Sub

    Protected Sub tbsecuanswer_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tbsecuanswer.TextChanged

    End Sub

    Protected Sub ddlsecurity_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlsecurity.SelectedIndexChanged
        lblsecurity.Text = ddlsecurity.Text
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GVFORGOTPASS_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVFORGOTPASS.SelectedIndexChanged

    End Sub
End Class
