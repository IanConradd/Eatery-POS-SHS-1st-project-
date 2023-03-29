
Partial Class FORGOTPASSWORD
    Inherits System.Web.UI.Page

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbltotalsum.Text = Session("TOTAL")
    End Sub

    Protected Sub btncompute_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncompute.Click
        Dim total, bill, sum As Integer
        total = lbltotalsum.Text
        bill = tbbill.Text

        sum = bill - total

        lblchange.Text = sum
    End Sub

    Protected Sub btnorderagain_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnorderagain.Click
        Response.Redirect("EMPLOYEEPAGE.aspx")

    End Sub
End Class
