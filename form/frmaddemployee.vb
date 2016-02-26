Public Class frmaddemployee

    Private Sub txtfirstname_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtfirstname.KeyPress
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
    Private Sub txtfirstname_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtfirstname.TextChanged
        'Uppercase first character
        txtfirstname.Text = Globalization.CultureInfo.CurrentCulture.TextInfo.ToTitleCase(txtfirstname.Text)
        txtfirstname.SelectionStart = txtfirstname.TextLength + 1
    End Sub

    Private Sub txtmiddlename_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtmiddlename.KeyPress
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

    Private Sub txtlastname_KeyPress(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtlastname.KeyPress
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

    Private Sub txtmiddlename_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtmiddlename.TextChanged
        'Uppercase first character
        txtmiddlename.Text = Globalization.CultureInfo.CurrentCulture.TextInfo.ToTitleCase(txtmiddlename.Text)
        txtmiddlename.SelectionStart = txtmiddlename.TextLength + 1
    End Sub

    Private Sub txtlastname_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtlastname.TextChanged
        'Uppercase first character
        txtlastname.Text = Globalization.CultureInfo.CurrentCulture.TextInfo.ToTitleCase(txtlastname.Text)
        txtlastname.SelectionStart = txtlastname.TextLength + 1
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.Hide()
        frmpersonaldetail.Show()
    End Sub
End Class