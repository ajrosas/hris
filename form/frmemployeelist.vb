Public Class frmemployeelist

    Private Sub txtemployeename_GotFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtemployeename.GotFocus
        'Textbox placeholder
        txtemployeename.ForeColor = Color.Black
        txtemployeename.Text = ""

    End Sub

    Private Sub txtemployeename_LostFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtemployeename.LostFocus
        'Textbox placeholder
        txtemployeename.ForeColor = Color.Gray
        txtemployeename.Text = "Type for hints..."

    End Sub

    Private Sub txtid_GotFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtid.GotFocus
        'Textbox placeholder
        txtid.ForeColor = Color.Black
        txtid.Text = ""
    End Sub

    Private Sub txtid_LostFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtid.LostFocus
        'Textbox placeholder
        txtid.ForeColor = Color.Gray
        txtid.Text = "Type Employee Id..."
    End Sub

  
    Private Sub txtid_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtid.TextChanged

    End Sub
End Class