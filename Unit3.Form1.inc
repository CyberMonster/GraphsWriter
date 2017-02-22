procedure InitializeComponent;
    begin
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.richTextBox1 := new System.Windows.Forms.RichTextBox();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(12, 78);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(101, 23);
        self.button1.TabIndex := 0;
        self.button1.Text := 'button1';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Location := new System.Drawing.Point(171, 78);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(101, 23);
        self.button2.TabIndex := 1;
        self.button2.Text := 'button2';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // richTextBox1
        // 
        self.richTextBox1.BackColor := System.Drawing.SystemColors.Menu;
        self.richTextBox1.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.richTextBox1.Cursor := System.Windows.Forms.Cursors.Default;
        self.richTextBox1.Location := new System.Drawing.Point(12, 13);
        self.richTextBox1.MaximumSize := new System.Drawing.Size(260, 59);
        self.richTextBox1.MinimumSize := new System.Drawing.Size(260, 59);
        self.richTextBox1.Name := 'richTextBox1';
        self.richTextBox1.ReadOnly := true;
        self.richTextBox1.Size := new System.Drawing.Size(260, 59);
        self.richTextBox1.TabIndex := 2;
        self.richTextBox1.Text := '';
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(284, 113);
        self.ControlBox := false;
        self.Controls.Add(self.richTextBox1);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.MaximumSize := new System.Drawing.Size(300, 151);
        self.MinimumSize := new System.Drawing.Size(300, 151);
        self.Name := 'Form1';
        self.Text := 'Error Handler';
        self.ResumeLayout(false);
    end;
