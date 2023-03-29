
Partial Class HOMEPAGE
    Inherits System.Web.UI.Page

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tbpassword.TextChanged

    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tblastname.TextChanged
        Session("LASTMAME") = tblastname.Text

    End Sub

    Protected Sub btnregister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Response.Redirect("REGISTER.ASPX")
    End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        gvlogin.DataBind()
        If gvlogin.Rows.Count = 1 And lblaccounttypehome.Text = ("EMPLOYEE") Then
            Session("LASTMAME") = tblastname.Text
            Response.Redirect("EMPLOYEEPAGE.ASPX")

        ElseIf gvlogin.Rows.Count = 1 And lblaccounttypehome.Text = ("ADMIN") Then
            Session("LASTMAME") = tblastname.Text
            Response.Redirect("ADMINPAGE1.ASPX")

        ElseIf gvlogin.Rows.Count = 0 Then
            lblusername1.Text = ("INVALID USERNAME OR PASSWORD")
            tblastname.Visible = False
            tbpassword.Visible = False
            lblpassword1.Visible = False
            btnforgot.Visible = True
            lblaccounttypehome1.Visible = False
            ddlaccounttypehome.Visible = False
            lblaccounttypehome.Visible = False




        End If
    End Sub

    Protected Sub ddlaccounttypehome_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlaccounttypehome.SelectedIndexChanged
        lblaccounttypehome.Text = ddlaccounttypehome.Text
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("LASTNAME") = tblastname.Text
    End Sub

    Protected Sub btntryagain_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btntryagain.Click
        lblusername1.Text = ("LASTNAME:")
        tblastname.Visible = True
        tbpassword.Visible = True
        lblpassword1.Visible = True
        btnforgot.Visible = True
        lblaccounttypehome1.Visible = True
        ddlaccounttypehome.Visible = True
        lblaccounttypehome.Visible = True
    End Sub

    Protected Sub btnforgot_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnforgot.Click
        Response.Redirect("FORGOTPASSWORD.aspx")
    End Sub
End Class
