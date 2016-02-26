Public Class frmemployeelist

    Private Sub txtemployeename_GotFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtemployeename.GotFocus
        'Textbox placeholder
        txtemployeename.ForeColor = Color.Black
        txtemployeename.Text = ""

    End Sub

    Private Sub txtemployeename_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtemployeename.KeyPress
        '97 - 122 = Ascii codes for simple letters
        '65 - 90  = Ascii codes for capital letters
        '48 - 57  = Ascii codes for numbers
        '33 - 47  = Ascii codes for special characters

        ' Accept only characters from a-z and A-Z.
        If Not (Asc(e.KeyChar) = 8) Then
            If Not (((Asc(e.KeyChar) >= 97 And Asc(e.KeyChar) <= 122) Or (Asc(e.KeyChar) >= 65 And Asc(e.KeyChar) <= 90)) Or (Asc(e.KeyChar) >= 32 And Asc(e.KeyChar) <= 47)) Then
                e.KeyChar = ChrW(0)
                e.Handled = True
            End If
        End If
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

    Private Sub txtemployeename_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtemployeename.TextChanged
        'Uppercase first character
        txtemployeename.Text = Globalization.CultureInfo.CurrentCulture.TextInfo.ToTitleCase(txtemployeename.Text)
        txtemployeename.SelectionStart = txtemployeename.TextLength + 1
    End Sub

    Private Sub frmemployeelist_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class