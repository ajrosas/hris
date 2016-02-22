<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmjobcat
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
        Me.grpboxjobtitle = New System.Windows.Forms.GroupBox()
        Me.DataGridView1 = New System.Windows.Forms.DataGridView()
        Me.btndelete = New System.Windows.Forms.Button()
        Me.btnadd = New System.Windows.Forms.Button()
        Me.btnconfig = New System.Windows.Forms.Button()
        Me.btndashboard = New System.Windows.Forms.Button()
        Me.grpbox1 = New System.Windows.Forms.GroupBox()
        Me.btnnation = New System.Windows.Forms.Button()
        Me.btnquali = New System.Windows.Forms.Button()
        Me.btnuserman = New System.Windows.Forms.Button()
        Me.btnorgan = New System.Windows.Forms.Button()
        Me.btnjob = New System.Windows.Forms.Button()
        Me.lbllogo = New System.Windows.Forms.Label()
        Me.btnperformance = New System.Windows.Forms.Button()
        Me.btnrecruitment = New System.Windows.Forms.Button()
        Me.btntime = New System.Windows.Forms.Button()
        Me.btnadmin = New System.Windows.Forms.Button()
        Me.btnleave = New System.Windows.Forms.Button()
        Me.btnpim = New System.Windows.Forms.Button()
        Me.grpboxjobtitle.SuspendLayout()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.grpbox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'grpboxjobtitle
        '
        Me.grpboxjobtitle.Controls.Add(Me.DataGridView1)
        Me.grpboxjobtitle.Controls.Add(Me.btndelete)
        Me.grpboxjobtitle.Controls.Add(Me.btnadd)
        Me.grpboxjobtitle.Location = New System.Drawing.Point(10, 123)
        Me.grpboxjobtitle.Name = "grpboxjobtitle"
        Me.grpboxjobtitle.Size = New System.Drawing.Size(1333, 602)
        Me.grpboxjobtitle.TabIndex = 28
        Me.grpboxjobtitle.TabStop = False
        Me.grpboxjobtitle.Text = "Job Title"
        '
        'DataGridView1
        '
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Location = New System.Drawing.Point(-8, 76)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.Size = New System.Drawing.Size(1362, 526)
        Me.DataGridView1.TabIndex = 12
        '
        'btndelete
        '
        Me.btndelete.Location = New System.Drawing.Point(186, 19)
        Me.btndelete.Name = "btndelete"
        Me.btndelete.Size = New System.Drawing.Size(134, 35)
        Me.btndelete.TabIndex = 11
        Me.btndelete.Text = "Delete"
        Me.btndelete.UseVisualStyleBackColor = True
        '
        'btnadd
        '
        Me.btnadd.Location = New System.Drawing.Point(28, 19)
        Me.btnadd.Name = "btnadd"
        Me.btnadd.Size = New System.Drawing.Size(134, 35)
        Me.btnadd.TabIndex = 10
        Me.btnadd.Text = "Add"
        Me.btnadd.UseVisualStyleBackColor = True
        '
        'btnconfig
        '
        Me.btnconfig.Location = New System.Drawing.Point(647, 19)
        Me.btnconfig.Name = "btnconfig"
        Me.btnconfig.Size = New System.Drawing.Size(134, 35)
        Me.btnconfig.TabIndex = 7
        Me.btnconfig.Text = "Configuratio"
        Me.btnconfig.UseVisualStyleBackColor = True
        '
        'btndashboard
        '
        Me.btndashboard.Location = New System.Drawing.Point(788, 48)
        Me.btndashboard.Name = "btndashboard"
        Me.btndashboard.Size = New System.Drawing.Size(134, 35)
        Me.btndashboard.TabIndex = 26
        Me.btndashboard.Text = "Dashboard"
        Me.btndashboard.UseVisualStyleBackColor = True
        '
        'grpbox1
        '
        Me.grpbox1.BackColor = System.Drawing.Color.Khaki
        Me.grpbox1.Controls.Add(Me.btnconfig)
        Me.grpbox1.Controls.Add(Me.btnnation)
        Me.grpbox1.Controls.Add(Me.btnquali)
        Me.grpbox1.Controls.Add(Me.btnuserman)
        Me.grpbox1.Controls.Add(Me.btnorgan)
        Me.grpbox1.Controls.Add(Me.btnjob)
        Me.grpbox1.Location = New System.Drawing.Point(10, 63)
        Me.grpbox1.Name = "grpbox1"
        Me.grpbox1.Size = New System.Drawing.Size(912, 54)
        Me.grpbox1.TabIndex = 27
        Me.grpbox1.TabStop = False
        Me.grpbox1.Visible = False
        '
        'btnnation
        '
        Me.btnnation.Location = New System.Drawing.Point(517, 19)
        Me.btnnation.Name = "btnnation"
        Me.btnnation.Size = New System.Drawing.Size(134, 35)
        Me.btnnation.TabIndex = 6
        Me.btnnation.Text = "Nationality"
        Me.btnnation.UseVisualStyleBackColor = True
        '
        'btnquali
        '
        Me.btnquali.Location = New System.Drawing.Point(387, 19)
        Me.btnquali.Name = "btnquali"
        Me.btnquali.Size = New System.Drawing.Size(134, 35)
        Me.btnquali.TabIndex = 5
        Me.btnquali.Text = "Qualification"
        Me.btnquali.UseVisualStyleBackColor = True
        '
        'btnuserman
        '
        Me.btnuserman.Location = New System.Drawing.Point(-2, 19)
        Me.btnuserman.Name = "btnuserman"
        Me.btnuserman.Size = New System.Drawing.Size(134, 35)
        Me.btnuserman.TabIndex = 2
        Me.btnuserman.Text = "User Management"
        Me.btnuserman.UseVisualStyleBackColor = True
        '
        'btnorgan
        '
        Me.btnorgan.Location = New System.Drawing.Point(257, 19)
        Me.btnorgan.Name = "btnorgan"
        Me.btnorgan.Size = New System.Drawing.Size(134, 35)
        Me.btnorgan.TabIndex = 4
        Me.btnorgan.Text = "Organization"
        Me.btnorgan.UseVisualStyleBackColor = True
        '
        'btnjob
        '
        Me.btnjob.Location = New System.Drawing.Point(129, 19)
        Me.btnjob.Name = "btnjob"
        Me.btnjob.Size = New System.Drawing.Size(134, 35)
        Me.btnjob.TabIndex = 3
        Me.btnjob.Text = "Job"
        Me.btnjob.UseVisualStyleBackColor = True
        '
        'lbllogo
        '
        Me.lbllogo.AutoSize = True
        Me.lbllogo.Location = New System.Drawing.Point(85, 4)
        Me.lbllogo.Name = "lbllogo"
        Me.lbllogo.Size = New System.Drawing.Size(27, 13)
        Me.lbllogo.TabIndex = 19
        Me.lbllogo.Text = "logo"
        '
        'btnperformance
        '
        Me.btnperformance.Location = New System.Drawing.Point(657, 48)
        Me.btnperformance.Name = "btnperformance"
        Me.btnperformance.Size = New System.Drawing.Size(134, 35)
        Me.btnperformance.TabIndex = 25
        Me.btnperformance.Text = "Performance"
        Me.btnperformance.UseVisualStyleBackColor = True
        '
        'btnrecruitment
        '
        Me.btnrecruitment.Location = New System.Drawing.Point(527, 48)
        Me.btnrecruitment.Name = "btnrecruitment"
        Me.btnrecruitment.Size = New System.Drawing.Size(134, 35)
        Me.btnrecruitment.TabIndex = 24
        Me.btnrecruitment.Text = "Recruitment"
        Me.btnrecruitment.UseVisualStyleBackColor = True
        '
        'btntime
        '
        Me.btntime.Location = New System.Drawing.Point(397, 48)
        Me.btntime.Name = "btntime"
        Me.btntime.Size = New System.Drawing.Size(134, 35)
        Me.btntime.TabIndex = 23
        Me.btntime.Text = "Time"
        Me.btntime.UseVisualStyleBackColor = True
        '
        'btnadmin
        '
        Me.btnadmin.Location = New System.Drawing.Point(8, 48)
        Me.btnadmin.Name = "btnadmin"
        Me.btnadmin.Size = New System.Drawing.Size(134, 35)
        Me.btnadmin.TabIndex = 20
        Me.btnadmin.Text = "Admin"
        Me.btnadmin.UseVisualStyleBackColor = True
        '
        'btnleave
        '
        Me.btnleave.Location = New System.Drawing.Point(267, 48)
        Me.btnleave.Name = "btnleave"
        Me.btnleave.Size = New System.Drawing.Size(134, 35)
        Me.btnleave.TabIndex = 22
        Me.btnleave.Text = "Leave"
        Me.btnleave.UseVisualStyleBackColor = True
        '
        'btnpim
        '
        Me.btnpim.Location = New System.Drawing.Point(139, 48)
        Me.btnpim.Name = "btnpim"
        Me.btnpim.Size = New System.Drawing.Size(134, 35)
        Me.btnpim.TabIndex = 21
        Me.btnpim.Text = "PIM"
        Me.btnpim.UseVisualStyleBackColor = True
        '
        'frmjobcat
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1350, 729)
        Me.Controls.Add(Me.grpboxjobtitle)
        Me.Controls.Add(Me.btndashboard)
        Me.Controls.Add(Me.lbllogo)
        Me.Controls.Add(Me.btnperformance)
        Me.Controls.Add(Me.btnrecruitment)
        Me.Controls.Add(Me.btntime)
        Me.Controls.Add(Me.btnadmin)
        Me.Controls.Add(Me.btnleave)
        Me.Controls.Add(Me.btnpim)
        Me.Controls.Add(Me.grpbox1)
        Me.Name = "frmjobcat"
        Me.Text = "frmjobcat"
        Me.grpboxjobtitle.ResumeLayout(False)
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.grpbox1.ResumeLayout(False)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents grpboxjobtitle As System.Windows.Forms.GroupBox
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents btndelete As System.Windows.Forms.Button
    Friend WithEvents btnadd As System.Windows.Forms.Button
    Friend WithEvents btnconfig As System.Windows.Forms.Button
    Friend WithEvents btndashboard As System.Windows.Forms.Button
    Friend WithEvents grpbox1 As System.Windows.Forms.GroupBox
    Friend WithEvents btnnation As System.Windows.Forms.Button
    Friend WithEvents btnquali As System.Windows.Forms.Button
    Friend WithEvents btnuserman As System.Windows.Forms.Button
    Friend WithEvents btnorgan As System.Windows.Forms.Button
    Friend WithEvents btnjob As System.Windows.Forms.Button
    Friend WithEvents lbllogo As System.Windows.Forms.Label
    Friend WithEvents btnperformance As System.Windows.Forms.Button
    Friend WithEvents btnrecruitment As System.Windows.Forms.Button
    Friend WithEvents btntime As System.Windows.Forms.Button
    Friend WithEvents btnadmin As System.Windows.Forms.Button
    Friend WithEvents btnleave As System.Windows.Forms.Button
    Friend WithEvents btnpim As System.Windows.Forms.Button
End Class
