procedure InitializeComponent;
    begin
        self.richTextBox1 := new System.Windows.Forms.RichTextBox();
        self.richTextBox2 := new System.Windows.Forms.RichTextBox();
        self.label1 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.radioButton1 := new System.Windows.Forms.RadioButton();
        self.radioButton2 := new System.Windows.Forms.RadioButton();
        self.radioButton3 := new System.Windows.Forms.RadioButton();
        self.button1 := new System.Windows.Forms.Button();
        self.label3 := new System.Windows.Forms.Label();
        self.button2 := new System.Windows.Forms.Button();
        self.radioButton4 := new System.Windows.Forms.RadioButton();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.label4 := new System.Windows.Forms.Label();
        self.label5 := new System.Windows.Forms.Label();
        self.textBox3 := new System.Windows.Forms.TextBox();
        self.richTextBox3 := new System.Windows.Forms.RichTextBox();
        self.SuspendLayout();
        // 
        // richTextBox1
        // 
        self.richTextBox1.Location := new System.Drawing.Point(12, 35);
        self.richTextBox1.Name := 'richTextBox1';
        self.richTextBox1.Size := new System.Drawing.Size(200, 100);
        self.richTextBox1.TabIndex := 0;
        self.richTextBox1.Tag := '';
        self.richTextBox1.Text := '';
        self.richTextBox1.TextChanged += richTextBox1_TextChanged;
        self.richTextBox1.KeyPress += richTextBox1_KeyPress;
        // 
        // richTextBox2
        // 
        self.richTextBox2.Location := new System.Drawing.Point(235, 35);
        self.richTextBox2.Name := 'richTextBox2';
        self.richTextBox2.Size := new System.Drawing.Size(200, 100);
        self.richTextBox2.TabIndex := 1;
        self.richTextBox2.Text := '';
        self.richTextBox2.TextChanged += richTextBox2_TextChanged;
        self.richTextBox2.KeyPress += richTextBox2_KeyPress;
        // 
        // label1
        // 
        self.label1.Location := new System.Drawing.Point(12, 9);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(200, 23);
        self.label1.TabIndex := 2;
        self.label1.Text := 'Значение функции';
        self.label1.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // label2
        // 
        self.label2.Location := new System.Drawing.Point(234, 9);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(200, 23);
        self.label2.TabIndex := 3;
        self.label2.Text := 'Значение аргумента';
        self.label2.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // radioButton1
        // 
        self.radioButton1.BackColor := System.Drawing.Color.Bisque;
        self.radioButton1.Checked := true;
        self.radioButton1.Location := new System.Drawing.Point(12, 141);
        self.radioButton1.Name := 'radioButton1';
        self.radioButton1.Size := new System.Drawing.Size(200, 24);
        self.radioButton1.TabIndex := 3;
        self.radioButton1.TabStop := true;
        self.radioButton1.Text := 'Метод выбранных точек';
        self.radioButton1.UseVisualStyleBackColor := false;
        self.radioButton1.CheckedChanged += radioButton1_CheckedChanged;
        // 
        // radioButton2
        // 
        self.radioButton2.Location := new System.Drawing.Point(12, 171);
        self.radioButton2.Name := 'radioButton2';
        self.radioButton2.Size := new System.Drawing.Size(200, 24);
        self.radioButton2.TabIndex := 4;
        self.radioButton2.TabStop := true;
        self.radioButton2.Text := 'Метод средних';
        self.radioButton2.UseVisualStyleBackColor := false;
        self.radioButton2.CheckedChanged += radioButton2_CheckedChanged;
        // 
        // radioButton3
        // 
        self.radioButton3.Location := new System.Drawing.Point(12, 201);
        self.radioButton3.Name := 'radioButton3';
        self.radioButton3.Size := new System.Drawing.Size(200, 24);
        self.radioButton3.TabIndex := 5;
        self.radioButton3.TabStop := true;
        self.radioButton3.Text := 'Метод наименьших квадратов';
        self.radioButton3.UseVisualStyleBackColor := false;
        self.radioButton3.CheckedChanged += radioButton3_CheckedChanged;
        // 
        // button1
        // 
        self.button1.BackColor := System.Drawing.SystemColors.InactiveBorder;
        self.button1.BackgroundImageLayout := System.Windows.Forms.ImageLayout.Center;
        self.button1.Enabled := false;
        self.button1.Location := new System.Drawing.Point(234, 141);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(200, 84);
        self.button1.TabIndex := 2;
        self.button1.Text := 'Расчитать';
        self.button1.UseVisualStyleBackColor := false;
        self.button1.Click += button1_Click;
        // 
        // label3
        // 
        self.label3.Location := new System.Drawing.Point(12, 259);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(200, 18);
        self.label3.TabIndex := 9;
        self.label3.Text := 'Ваша функция';
        self.label3.TextAlign := System.Drawing.ContentAlignment.MiddleCenter;
        // 
        // button2
        // 
        self.button2.BackColor := System.Drawing.SystemColors.InactiveBorder;
        self.button2.BackgroundImageLayout := System.Windows.Forms.ImageLayout.Center;
        self.button2.Cursor := System.Windows.Forms.Cursors.Default;
        self.button2.Location := new System.Drawing.Point(234, 259);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(199, 46);
        self.button2.TabIndex := 8;
        self.button2.Text := 'Компилировать функцию';
        self.button2.UseVisualStyleBackColor := false;
        self.button2.Click += button2_Click;
        // 
        // radioButton4
        // 
        self.radioButton4.Location := new System.Drawing.Point(12, 232);
        self.radioButton4.Name := 'radioButton4';
        self.radioButton4.Size := new System.Drawing.Size(200, 24);
        self.radioButton4.TabIndex := 6;
        self.radioButton4.TabStop := true;
        self.radioButton4.Text := 'Вывод без параметров';
        self.radioButton4.UseVisualStyleBackColor := true;
        self.radioButton4.CheckedChanged += radioButton4_CheckedChanged;
        // 
        // textBox2
        // 
        self.textBox2.Enabled := false;
        self.textBox2.Location := new System.Drawing.Point(260, 229);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(70, 20);
        self.textBox2.TabIndex := 9;
        // 
        // label4
        // 
        self.label4.Location := new System.Drawing.Point(235, 232);
        self.label4.Name := 'label4';
        self.label4.Size := new System.Drawing.Size(20, 20);
        self.label4.TabIndex := 13;
        self.label4.Text := 'a: ';
        // 
        // label5
        // 
        self.label5.Location := new System.Drawing.Point(336, 232);
        self.label5.Name := 'label5';
        self.label5.Size := new System.Drawing.Size(20, 20);
        self.label5.TabIndex := 14;
        self.label5.Text := 'b: ';
        // 
        // textBox3
        // 
        self.textBox3.Enabled := false;
        self.textBox3.Location := new System.Drawing.Point(363, 229);
        self.textBox3.Name := 'textBox3';
        self.textBox3.Size := new System.Drawing.Size(70, 20);
        self.textBox3.TabIndex := 10;
        // 
        // richTextBox3
        // 
        self.richTextBox3.Location := new System.Drawing.Point(12, 281);
        self.richTextBox3.Name := 'richTextBox3';
        self.richTextBox3.Size := new System.Drawing.Size(200, 24);
        self.richTextBox3.TabIndex := 7;
        self.richTextBox3.Text := '';
        self.richTextBox3.TextChanged += richTextBox3_TextChanged;
        self.richTextBox3.MouseDoubleClick += richTextBox3_MouseDoubleClick;
        // 
        // Form1
        // 
        self.BackColor := System.Drawing.Color.Bisque;
        self.BackgroundImageLayout := System.Windows.Forms.ImageLayout.Center;
        self.ClientSize := new System.Drawing.Size(448, 316);
        self.Controls.Add(self.richTextBox3);
        self.Controls.Add(self.textBox3);
        self.Controls.Add(self.label5);
        self.Controls.Add(self.label4);
        self.Controls.Add(self.textBox2);
        self.Controls.Add(self.radioButton4);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.radioButton3);
        self.Controls.Add(self.radioButton2);
        self.Controls.Add(self.radioButton1);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.richTextBox2);
        self.Controls.Add(self.richTextBox1);
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.Fixed3D;
        self.MaximumSize := new System.Drawing.Size(458, 348);
        self.MinimumSize := new System.Drawing.Size(458, 348);
        self.Name := 'Form1';
        self.Text := 'Утилита ввода значений';
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
