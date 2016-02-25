Imports MySql.Data.MySqlClient
Imports MySql.Data.Entity
Public Class frmlogin

    Private Sub frmlogin_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub txtusername_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtusername.KeyPress
        '97 - 122 = Ascii codes for simple letters
        '65 - 90  = Ascii codes for capital letters
        '48 - 57  = Ascii codes for numbers
        '33 - 47  = Ascii codes for special characters

        ' Accept only characters from a-z and A-Z.
        If Not (Asc(e.KeyChar) = 8) Then
            If Not ((Asc(e.KeyChar) >= 48 And Asc(e.KeyChar) <= 57) Or (Asc(e.KeyChar) >= 33 And Asc(e.KeyChar) <= 47)) Then
                e.KeyChar = ChrW(0)
                e.Handled = True
            End If
        End If

    End Sub

    Private Sub txtusername_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtusername.TextChanged
        ' Uppercase first character.
        'txtusername.Text = Globalization.CultureInfo.CurrentCulture.TextInfo.ToTitleCase(txtusername.Text)
        'txtusername.SelectionStart = txtusername.TextLength + 1
    End Sub

    Private Sub btnlogin_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        'button use to go in frmdash without username and password
        Me.Hide()
        frmemployeelist.Show()
    End Sub
End Class
