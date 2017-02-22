procedure InitializeComponent;
    begin
        self.colorDialog1 := new System.Windows.Forms.ColorDialog();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.SuspendLayout();
        // 
        // colorDialog1
        // 
        self.colorDialog1.FullOpen := true;
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(12, 12);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(75, 23);
        self.button1.TabIndex := 0;
        self.button1.Text := 'Скрыть все';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Location := new System.Drawing.Point(93, 12);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(99, 23);
        self.button2.TabIndex := 1;
        self.button2.Text := 'Отобразить все';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // Form1
        // 
        self.AutoScaleMode := System.Windows.Forms.AutoScaleMode.Inherit;
        self.AutoScroll := true;
        self.ClientSize := new System.Drawing.Size(544, 262);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.MinimumSize := new System.Drawing.Size(560, 300);
        self.Name := 'Form1';
        self.Text := 'Функции';
        self.ResumeLayout(false);
    end;
