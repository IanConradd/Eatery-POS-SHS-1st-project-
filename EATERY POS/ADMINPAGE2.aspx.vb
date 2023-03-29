
Partial Class FORGOTPASSWORD
    Inherits System.Web.UI.Page

    
    
    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tbfirstname.TextChanged

    End Sub

    Protected Sub btnadminhome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadminhome.Click
        Response.Redirect("ADMINPAGE1.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        
    End Sub
End Class
