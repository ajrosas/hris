<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmemployeelist
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtemployeename = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtid = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.cmbemploymentstatus = New System.Windows.Forms.ComboBox()
        Me.cmdemploymenthistory = New System.Windows.Forms.ComboBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.txtsupervisorname = New System.Windows.Forms.TextBox()
        Me.cmbjobtitle = New System.Windows.Forms.ComboBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.cmbsubunit = New System.Windows.Forms.ComboBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.btnsearch = New System.Windows.Forms.Button()
        Me.btnreset = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.BackColor = System.Drawing.SystemColors.ButtonFace
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(6, 11)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(184, 20)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Employee Information"
        '
        'txtemployeename
        '
        Me.txtemployeename.ForeColor = System.Drawing.Color.Gray
        Me.txtemployeename.Location = New System.Drawing.Point(30, 59)
        Me.txtemployeename.Name = "txtemployeename"
        Me.txtemployeename.Size = New System.Drawing.Size(230, 20)
        Me.txtemployeename.TabIndex = 1
        Me.txtemployeename.Text = "Type for hints..."
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(27, 43)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(84, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Employee Name"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(280, 43)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(16, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Id"
        '
        'txtid
        '
        Me.txtid.ForeColor = System.Drawing.Color.Gray
        Me.txtid.Location = New System.Drawing.Point(283, 59)
        Me.txtid.Name = "txtid"
        Me.txtid.Size = New System.Drawing.Size(230, 20)
        Me.txtid.TabIndex = 3
        Me.txtid.Text = "Type Employee Id..."
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(537, 43)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(97, 13)
        Me.Label4.TabIndex = 5
        Me.Label4.Text = "Employment Status"
        '
        'cmbemploymentstatus
        '
        Me.cmbemploymentstatus.FormattingEnabled = True
        Me.cmbemploymentstatus.Location = New System.Drawing.Point(540, 58)
        Me.cmbemploymentstatus.Name = "cmbemploymentstatus"
        Me.cmbemploymentstatus.Size = New System.Drawing.Size(209, 21)
        Me.cmbemploymentstatus.TabIndex = 6
        '
        'cmdemploymenthistory
        '
        Me.cmdemploymenthistory.FormattingEnabled = True
        Me.cmdemploymenthistory.Location = New System.Drawing.Point(780, 59)
        Me.cmdemploymenthistory.Name = "cmdemploymenthistory"
        Me.cmdemploymenthistory.Size = New System.Drawing.Size(209, 21)
        Me.cmdemploymenthistory.TabIndex = 8
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(777, 44)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(42, 13)
        Me.Label5.TabIndex = 7
        Me.Label5.Text = "Include"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(27, 92)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(88, 13)
        Me.Label6.TabIndex = 10
        Me.Label6.Text = "Supervisor Name"
        '
        'txtsupervisorname
        '
        Me.txtsupervisorname.ForeColor = System.Drawing.Color.Gray
        Me.txtsupervisorname.Location = New System.Drawing.Point(30, 108)
        Me.txtsupervisorname.Name = "txtsupervisorname"
        Me.txtsupervisorname.Size = New System.Drawing.Size(230, 20)
        Me.txtsupervisorname.TabIndex = 9
        Me.txtsupervisorname.Text = "Type for hints..."
        '
        'cmbjobtitle
        '
        Me.cmbjobtitle.FormattingEnabled = True
        Me.cmbjobtitle.Location = New System.Drawing.Point(283, 108)
        Me.cmbjobtitle.Name = "cmbjobtitle"
        Me.cmbjobtitle.Size = New System.Drawing.Size(209, 21)
        Me.cmbjobtitle.TabIndex = 12
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(280, 93)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(47, 13)
        Me.Label7.TabIndex = 11
        Me.Label7.Text = "Job Title"
        '
        'cmbsubunit
        '
        Me.cmbsubunit.FormattingEnabled = True
        Me.cmbsubunit.Location = New System.Drawing.Point(540, 108)
        Me.cmbsubunit.Name = "cmbsubunit"
        Me.cmbsubunit.Size = New System.Drawing.Size(209, 21)
        Me.cmbsubunit.TabIndex = 14
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(537, 93)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(47, 13)
        Me.Label8.TabIndex = 13
        Me.Label8.Text = "Job Title"
        '
        'btnsearch
        '
        Me.btnsearch.Location = New System.Drawing.Point(30, 153)
        Me.btnsearch.Name = "btnsearch"
        Me.btnsearch.Size = New System.Drawing.Size(75, 23)
        Me.btnsearch.TabIndex = 15
        Me.btnsearch.Text = "&Search"
        Me.btnsearch.UseVisualStyleBackColor = True
        '
        'btnreset
        '
        Me.btnreset.Location = New System.Drawing.Point(111, 153)
        Me.btnreset.Name = "btnreset"
        Me.btnreset.Size = New System.Drawing.Size(75, 23)
        Me.btnreset.TabIndex = 16
        Me.btnreset.Text = "&Reset"
        Me.btnreset.UseVisualStyleBackColor = True
        '
        'frmemployeelist
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1019, 426)
        Me.Controls.Add(Me.btnreset)
        Me.Controls.Add(Me.btnsearch)
        Me.Controls.Add(Me.cmbsubunit)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.cmbjobtitle)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.txtsupervisorname)
        Me.Controls.Add(Me.cmdemploymenthistory)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.cmbemploymentstatus)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.txtid)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.txtemployeename)
        Me.Controls.Add(Me.Label1)
        Me.Name = "frmemployeelist"
        Me.Text = "frmemployeelist"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtemployeename As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtid As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents cmbemploymentstatus As System.Windows.Forms.ComboBox
    Friend WithEvents cmdemploymenthistory As System.Windows.Forms.ComboBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents txtsupervisorname As System.Windows.Forms.TextBox
    Friend WithEvents cmbjobtitle As System.Windows.Forms.ComboBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents cmbsubunit As System.Windows.Forms.ComboBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents btnsearch As System.Windows.Forms.Button
    Friend WithEvents btnreset As System.Windows.Forms.Button
End Class
