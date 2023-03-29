
Partial Class FORGOTPASSWORD
    Inherits System.Web.UI.Page

    

    
    Protected Sub gvbreakfast_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvbreakfast.SelectedIndexChanged
        tbname.Text = gvbreakfast.SelectedRow.Cells(1).Text
        lblprice.Text = gvbreakfast.SelectedRow.Cells(2).Text

    End Sub

    Protected Sub gvlunch_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvlunch.SelectedIndexChanged
        tbname.Text = gvlunch.SelectedRow.Cells(1).Text
        lblprice.Text = gvlunch.SelectedRow.Cells(2).Text
    End Sub

    Protected Sub gvmeryenda_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvmeryenda.SelectedIndexChanged
        tbname.Text = gvmeryenda.SelectedRow.Cells(1).Text
        lblprice.Text = gvmeryenda.SelectedRow.Cells(2).Text
    End Sub

    Protected Sub gvdinner_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvdinner.SelectedIndexChanged
        tbname.Text = gvdinner.SelectedRow.Cells(1).Text
        lblprice.Text = gvdinner.SelectedRow.Cells(2).Text
    End Sub

    Protected Sub gvdesserts_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvdesserts.SelectedIndexChanged
        tbname.Text = gvdesserts.SelectedRow.Cells(1).Text
        lblprice.Text = gvdesserts.SelectedRow.Cells(2).Text
    End Sub

    Protected Sub gvdrinks_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvdrinks.SelectedIndexChanged
        tbname.Text = gvdrinks.SelectedRow.Cells(1).Text
        lblprice.Text = gvdrinks.SelectedRow.Cells(2).Text
    End Sub

    Protected Sub btncompute_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncompute.Click, btncompute1.Click
        Dim price, qty, sum As Integer
        price = lblprice.Text
        qty = tbquantity.Text

        sum = price * qty

        tbsub.Text = sum

    End Sub

    Protected Sub btnaddtocart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaddtocart.Click
        sqlfinalorder.Insert()
        sqlorders.Insert()
        sqllastorder.Insert()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblemployee.Text = Session("LASTNAME")
    End Sub

    Protected Sub sqlorders_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles sqlorders.Selecting

    End Sub

    Protected Sub btncompute1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncompute1.Click, btncompute1.Click
        Dim sum As Double = 0
        For i = 0 To gvorders.Rows.Count - 1
            sum += gvorders.Rows(i).Cells(4).Text 'put your Column Name here.
        Next
        lbltotal.Text = sum 'the result will display in a TextBox

    End Sub

    Protected Sub gvorders_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvorders.SelectedIndexChanged

    End Sub

    Protected Sub btncashout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncashout.Click
        sqlfinalorder1.Insert()
        sqlorderinfo.Insert()
        sqllastorder2.Insert()

        LBLAREYOUSURE.Visible = True
        btnyes.Visible = True
        btnno.Visible = True


    End Sub

    Protected Sub btnyes_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnyes.Click
        Session("TOTAL") = lbltotal.Text
        Response.Redirect("CASHOUTPAGE.aspx")
    End Sub

    Protected Sub btnno_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnno.Click
        DataBind()
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Response.Redirect("HOMEPAGE.aspx")
    End Sub

    Protected Sub gvlastorder2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvlastorder2.SelectedIndexChanged

    End Sub

   

    Protected Sub sqllastorder2_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles sqllastorder2.Selecting

    End Sub

    Protected Sub gvlastorder_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvlastorder.SelectedIndexChanged

    End Sub
End Class
