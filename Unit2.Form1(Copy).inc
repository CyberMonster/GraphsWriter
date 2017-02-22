procedure InitializeComponent;
    begin
        self.components := new System.ComponentModel.Container();
        self.pictureBox1 := new System.Windows.Forms.PictureBox();
        self.fontDialog1 := new System.Windows.Forms.FontDialog();
        self.colorDialog1 := new System.Windows.Forms.ColorDialog();
        self.saveFileDialog1 := new System.Windows.Forms.SaveFileDialog();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.button3 := new System.Windows.Forms.Button();
        self.button4 := new System.Windows.Forms.Button();
        self.maskedTextBox1 := new System.Windows.Forms.MaskedTextBox();
        self.maskedTextBox2 := new System.Windows.Forms.MaskedTextBox();
        self.label1 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.timer1 := new System.Windows.Forms.Timer(self.components);
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).BeginInit();
        self.SuspendLayout();
        // 
        // pictureBox1
        // 
        self.pictureBox1.BackColor := System.Drawing.Color.WhiteSmoke;
        self.pictureBox1.Location := new System.Drawing.Point(13, 13);
        self.pictureBox1.Name := 'pictureBox1';
        self.pictureBox1.Size := new System.Drawing.Size(558, 449);
        self.pictureBox1.TabIndex := 0;
        self.pictureBox1.TabStop := false;
        // 
        // saveFileDialog1
        // 
        self.saveFileDialog1.FileOk += saveFileDialog1_FileOk;
        // 
        // button1
        // 
        self.button1.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(192)))), (System.Int32((System.Byte(192)))));
        self.button1.Location := new System.Drawing.Point(13, 468);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(80, 42);
        self.button1.TabIndex := 1;
        self.button1.Text := 'Изменить шрифт';
        self.button1.UseVisualStyleBackColor := false;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(224)))), (System.Int32((System.Byte(192)))));
        self.button2.Location := new System.Drawing.Point(98, 468);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(80, 42);
        self.button2.TabIndex := 2;
        self.button2.Text := 'Изменить цвет';
        self.button2.UseVisualStyleBackColor := false;
        self.button2.Click += button2_Click;
        // 
        // button3
        // 
        self.button3.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(192)))), (System.Int32((System.Byte(255)))), (System.Int32((System.Byte(192)))));
        self.button3.Location := new System.Drawing.Point(184, 468);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(80, 42);
        self.button3.TabIndex := 3;
        self.button3.Text := 'Сохранить граффик';
        self.button3.UseVisualStyleBackColor := false;
        self.button3.Click += button3_Click;
        // 
        // button4
        // 
        self.button4.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(192)))), (System.Int32((System.Byte(255)))), (System.Int32((System.Byte(192)))));
        self.button4.Location := new System.Drawing.Point(270, 468);
        self.button4.Name := 'button4';
        self.button4.Size := new System.Drawing.Size(96, 42);
        self.button4.TabIndex := 6;
        self.button4.Text := 'Задать новое значение шага';
        self.button4.UseVisualStyleBackColor := false;
        self.button4.Click += button4_Click;
        // 
        // maskedTextBox1
        // 
        self.maskedTextBox1.BackColor := System.Drawing.Color.SeaShell;
        self.maskedTextBox1.Location := new System.Drawing.Point(372, 468);
        self.maskedTextBox1.Mask := '000000';
        self.maskedTextBox1.Name := 'maskedTextBox1';
        self.maskedTextBox1.PromptChar := ' ';
        self.maskedTextBox1.Size := new System.Drawing.Size(44, 20);
        self.maskedTextBox1.TabIndex := 8;
        self.maskedTextBox1.Text := '3';
        // 
        // maskedTextBox2
        // 
        self.maskedTextBox2.BackColor := System.Drawing.Color.SeaShell;
        self.maskedTextBox2.Location := new System.Drawing.Point(372, 490);
        self.maskedTextBox2.Mask := '000000';
        self.maskedTextBox2.Name := 'maskedTextBox2';
        self.maskedTextBox2.PromptChar := ' ';
        self.maskedTextBox2.Size := new System.Drawing.Size(44, 20);
        self.maskedTextBox2.TabIndex := 9;
        self.maskedTextBox2.Text := '6';
        // 
        // label1
        // 
        self.label1.Location := new System.Drawing.Point(422, 468);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(149, 20);
        self.label1.TabIndex := 10;
        self.label1.Text := 'Подписанные деления';
        // 
        // label2
        // 
        self.label2.Location := new System.Drawing.Point(422, 490);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(149, 20);
        self.label2.TabIndex := 11;
        self.label2.Text := 'Неподписанные деления';
        // 
        // timer1
        // 
        self.timer1.Enabled := true;
        self.timer1.Interval := 1000;
        self.timer1.Tick += timer1_Tick;
        // 
        // Form1
        // 
        self.AutoScaleMode := System.Windows.Forms.AutoScaleMode.Inherit;
        self.BackColor := System.Drawing.Color.Bisque;
        self.ClientSize := new System.Drawing.Size(587, 533);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.maskedTextBox2);
        self.Controls.Add(self.maskedTextBox1);
        self.Controls.Add(self.button4);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.pictureBox1);
        self.MinimumSize := new System.Drawing.Size(603, 571);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.Activated += Form1_Activated;
        self.Resize += Form1_Resize;
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).EndInit();
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
procedure R_S;
  var
    File_: PABCSystem.Text;
    Ind_: integer;
    Counter: integer;
    Arr_S: array of integer;
  begin
    try
      Assign(File_,'Settings.txt');
      Reset(File_);
      readln('Counter');
      Arr_S:= new integer[Counter];
      For Ind_:= 0 to Counter-1 do
        readln(File_,Arr_S[Counter]);
      Long_Line:= Arr_S[0];
      Short_Line:= Arr_S[1];
      XLine:= Arr_S[2];
      startx:= Arr_S[3];
      starty:= Arr_S[4];
      endx_:= Arr_S[5];
      endy_:= Arr_S[6];
      CorrectOutY:= Arr_S[7];
      CorrectOutX:= Arr_S[8];
      Pen_Line_End_Const:= Arr_S[9];
    except
      try
        File_.Close;
      except
      end;
      exit;
    end;
    File_.Colse;
  end;