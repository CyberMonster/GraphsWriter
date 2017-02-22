procedure InitializeComponent;
    begin
        self.components := new System.ComponentModel.Container();
        self.timer1 := new System.Windows.Forms.Timer(self.components);
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
        self.label3 := new System.Windows.Forms.Label();
        self.label4 := new System.Windows.Forms.Label();
        self.contextMenuStrip1 := new System.Windows.Forms.ContextMenuStrip(self.components);
        self.toolStripMenuItem2 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem7 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem8 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem13 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem14 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem10 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem26 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem36 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem37 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem39 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripSeparator27 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripMenuItem16 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem17 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem18 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripSeparator10 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripMenuItem19 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem20 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem30 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem31 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem32 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem34 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripSeparator11 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripMenuItem35 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripSeparator12 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripMenuItem33 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem21 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem27 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox15 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem28 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox16 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem22 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox23 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem23 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox24 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem11 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox14 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem29 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox17 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem12 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem1 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox25 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem25 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox26 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem9 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox13 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem3 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem4 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox5 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator1 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox1 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator2 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox6 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator3 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox2 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem5 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox7 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator4 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox3 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator5 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox8 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator6 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox4 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem38 := new System.Windows.Forms.ToolStripMenuItem();
        self.xToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox18 := new System.Windows.Forms.ToolStripTextBox();
        self.yToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox19 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripMenuItem6 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripTextBox9 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator7 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox10 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator8 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox11 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator9 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox12 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator16 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox21 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator17 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripTextBox22 := new System.Windows.Forms.ToolStripTextBox();
        self.toolStripSeparator28 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripMenuItem15 := new System.Windows.Forms.ToolStripMenuItem();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.toolTip1 := new System.Windows.Forms.ToolTip(self.components);
        self.toolStripContainer1 := new System.Windows.Forms.ToolStripContainer();
        self.button9 := new System.Windows.Forms.Button();
        self.button5 := new System.Windows.Forms.Button();
        self.button8 := new System.Windows.Forms.Button();
        self.button6 := new System.Windows.Forms.Button();
        self.button13 := new System.Windows.Forms.Button();
        self.tableLayoutPanel1 := new System.Windows.Forms.TableLayoutPanel();
        self.button7 := new System.Windows.Forms.Button();
        self.button12 := new System.Windows.Forms.Button();
        self.tableLayoutPanel2 := new System.Windows.Forms.TableLayoutPanel();
        self.button10 := new System.Windows.Forms.Button();
        self.button11 := new System.Windows.Forms.Button();
        self.helpProvider1 := new System.Windows.Forms.HelpProvider();
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).BeginInit();
        self.contextMenuStrip1.SuspendLayout();
        self.toolStripContainer1.SuspendLayout();
        self.tableLayoutPanel1.SuspendLayout();
        self.tableLayoutPanel2.SuspendLayout();
        self.SuspendLayout();
        // 
        // timer1
        // 
        self.timer1.Interval := 1000;
        self.timer1.Tick += timer1_Tick;
        // 
        // pictureBox1
        // 
        self.pictureBox1.BackColor := System.Drawing.Color.WhiteSmoke;
        self.pictureBox1.Cursor := System.Windows.Forms.Cursors.Cross;
        self.pictureBox1.Location := new System.Drawing.Point(12, 13);
        self.pictureBox1.Name := 'pictureBox1';
        self.pictureBox1.Size := new System.Drawing.Size(705, 449);
        self.pictureBox1.TabIndex := 0;
        self.pictureBox1.TabStop := false;
        self.pictureBox1.MouseDown += pictureBox1_MouseDown;
        self.pictureBox1.MouseEnter += pictureBox1_MouseEnter;
        self.pictureBox1.MouseLeave += pictureBox1_MouseLeave;
        self.pictureBox1.MouseMove += pictureBox1_MouseMove;
        self.pictureBox1.MouseUp += pictureBox1_MouseUp;
        // 
        // colorDialog1
        // 
        self.colorDialog1.FullOpen := true;
        // 
        // saveFileDialog1
        // 
        self.saveFileDialog1.FileOk += saveFileDialog1_FileOk;
        // 
        // button1
        // 
        self.button1.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(255)))), (System.Int32((System.Byte(192)))), (System.Int32((System.Byte(192)))));
        self.button1.Location := new System.Drawing.Point(12, 468);
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
        self.button3.Text := 'Сохранить график';
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
        self.maskedTextBox1.Mask := '000';
        self.maskedTextBox1.Name := 'maskedTextBox1';
        self.maskedTextBox1.PromptChar := ' ';
        self.maskedTextBox1.Size := new System.Drawing.Size(31, 20);
        self.maskedTextBox1.TabIndex := 8;
        self.maskedTextBox1.Text := '3';
        // 
        // maskedTextBox2
        // 
        self.maskedTextBox2.BackColor := System.Drawing.Color.SeaShell;
        self.maskedTextBox2.Location := new System.Drawing.Point(372, 490);
        self.maskedTextBox2.Mask := '000';
        self.maskedTextBox2.Name := 'maskedTextBox2';
        self.maskedTextBox2.PromptChar := ' ';
        self.maskedTextBox2.Size := new System.Drawing.Size(31, 20);
        self.maskedTextBox2.TabIndex := 9;
        self.maskedTextBox2.Text := '6';
        // 
        // label1
        // 
        self.label1.Location := new System.Drawing.Point(409, 468);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(138, 20);
        self.label1.TabIndex := 10;
        self.label1.Text := 'Подписанные деления';
        // 
        // label2
        // 
        self.label2.Location := new System.Drawing.Point(409, 490);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(138, 20);
        self.label2.TabIndex := 11;
        self.label2.Text := 'Неподписанные деления';
        // 
        // label3
        // 
        self.label3.Location := new System.Drawing.Point(553, 468);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(164, 20);
        self.label3.TabIndex := 12;
        self.label3.Text := 'label3';
        // 
        // label4
        // 
        self.label4.Location := new System.Drawing.Point(553, 490);
        self.label4.Name := 'label4';
        self.label4.Size := new System.Drawing.Size(164, 20);
        self.label4.TabIndex := 13;
        self.label4.Text := 'label4';
        // 
        // contextMenuStrip1
        // 
        self.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[7](self.toolStripMenuItem2, self.toolStripSeparator27, self.toolStripMenuItem16, self.toolStripMenuItem3, self.toolStripMenuItem6, self.toolStripSeparator28, self.toolStripMenuItem15));
        self.contextMenuStrip1.Name := 'contextMenuStrip1';
        self.contextMenuStrip1.Size := new System.Drawing.Size(174, 126);
        self.contextMenuStrip1.Closed += contextMenuStrip1_Closed;
        self.contextMenuStrip1.Opening += contextMenuStrip1_Opening;
        // 
        // toolStripMenuItem2
        // 
        self.toolStripMenuItem2.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[5](self.toolStripMenuItem7, self.toolStripMenuItem26, self.toolStripMenuItem36, self.toolStripMenuItem37, self.toolStripMenuItem39));
        self.toolStripMenuItem2.Name := 'toolStripMenuItem2';
        self.toolStripMenuItem2.Size := new System.Drawing.Size(173, 22);
        self.toolStripMenuItem2.Text := 'Настройки';
        // 
        // toolStripMenuItem7
        // 
        self.toolStripMenuItem7.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[2](self.toolStripMenuItem8, self.toolStripMenuItem10));
        self.toolStripMenuItem7.Name := 'toolStripMenuItem7';
        self.toolStripMenuItem7.Size := new System.Drawing.Size(219, 22);
        self.toolStripMenuItem7.Text := 'График';
        // 
        // toolStripMenuItem8
        // 
        self.toolStripMenuItem8.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[2](self.toolStripMenuItem13, self.toolStripMenuItem14));
        self.toolStripMenuItem8.Name := 'toolStripMenuItem8';
        self.toolStripMenuItem8.Size := new System.Drawing.Size(121, 22);
        self.toolStripMenuItem8.Text := 'Режим';
        // 
        // toolStripMenuItem13
        // 
        self.toolStripMenuItem13.Enabled := false;
        self.toolStripMenuItem13.Name := 'toolStripMenuItem13';
        self.toolStripMenuItem13.Size := new System.Drawing.Size(177, 22);
        self.toolStripMenuItem13.Text := 'Полярная система';
        // 
        // toolStripMenuItem14
        // 
        self.toolStripMenuItem14.Checked := true;
        self.toolStripMenuItem14.CheckOnClick := true;
        self.toolStripMenuItem14.CheckState := System.Windows.Forms.CheckState.Checked;
        self.toolStripMenuItem14.Enabled := false;
        self.toolStripMenuItem14.Name := 'toolStripMenuItem14';
        self.toolStripMenuItem14.Size := new System.Drawing.Size(177, 22);
        self.toolStripMenuItem14.Text := 'Обычшая';
        self.toolStripMenuItem14.Click += toolStripMenuItem14_Click;
        // 
        // toolStripMenuItem10
        // 
        self.toolStripMenuItem10.Enabled := false;
        self.toolStripMenuItem10.Name := 'toolStripMenuItem10';
        self.toolStripMenuItem10.Size := new System.Drawing.Size(121, 22);
        self.toolStripMenuItem10.Text := 'Отступы';
        // 
        // toolStripMenuItem26
        // 
        self.toolStripMenuItem26.CheckOnClick := true;
        self.toolStripMenuItem26.Name := 'toolStripMenuItem26';
        self.toolStripMenuItem26.Size := new System.Drawing.Size(219, 22);
        self.toolStripMenuItem26.Text := 'Выводить FPS';
        self.toolStripMenuItem26.Click += toolStripMenuItem26_Click;
        // 
        // toolStripMenuItem36
        // 
        self.toolStripMenuItem36.CheckOnClick := true;
        self.toolStripMenuItem36.Name := 'toolStripMenuItem36';
        self.toolStripMenuItem36.Size := new System.Drawing.Size(219, 22);
        self.toolStripMenuItem36.Text := 'Система - прямоугольник';
        self.toolStripMenuItem36.Click += toolStripMenuItem36_Click;
        // 
        // toolStripMenuItem37
        // 
        self.toolStripMenuItem37.CheckOnClick := true;
        self.toolStripMenuItem37.Enabled := false;
        self.toolStripMenuItem37.Name := 'toolStripMenuItem37';
        self.toolStripMenuItem37.Size := new System.Drawing.Size(219, 22);
        self.toolStripMenuItem37.Text := 'Убрать лишнее';
        self.toolStripMenuItem37.Click += toolStripMenuItem37_Click;
        // 
        // toolStripMenuItem39
        // 
        self.toolStripMenuItem39.Checked := true;
        self.toolStripMenuItem39.CheckOnClick := true;
        self.toolStripMenuItem39.CheckState := System.Windows.Forms.CheckState.Checked;
        self.toolStripMenuItem39.Name := 'toolStripMenuItem39';
        self.toolStripMenuItem39.Size := new System.Drawing.Size(219, 22);
        self.toolStripMenuItem39.Text := 'Высокое качество';
        self.toolStripMenuItem39.Click += toolStripMenuItem39_Click;
        // 
        // toolStripSeparator27
        // 
        self.toolStripSeparator27.Name := 'toolStripSeparator27';
        self.toolStripSeparator27.Size := new System.Drawing.Size(170, 6);
        // 
        // toolStripMenuItem16
        // 
        self.toolStripMenuItem16.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[3](self.toolStripMenuItem17, self.toolStripMenuItem21, self.toolStripMenuItem12));
        self.toolStripMenuItem16.Name := 'toolStripMenuItem16';
        self.toolStripMenuItem16.Size := new System.Drawing.Size(173, 22);
        self.toolStripMenuItem16.Text := 'Оформление';
        // 
        // toolStripMenuItem17
        // 
        self.toolStripMenuItem17.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[10](self.toolStripMenuItem18, self.toolStripSeparator10, self.toolStripMenuItem19, self.toolStripMenuItem20, self.toolStripMenuItem30, self.toolStripMenuItem34, self.toolStripSeparator11, self.toolStripMenuItem35, self.toolStripSeparator12, self.toolStripMenuItem33));
        self.toolStripMenuItem17.Name := 'toolStripMenuItem17';
        self.toolStripMenuItem17.Size := new System.Drawing.Size(126, 22);
        self.toolStripMenuItem17.Text := 'Цвета';
        // 
        // toolStripMenuItem18
        // 
        self.toolStripMenuItem18.Name := 'toolStripMenuItem18';
        self.toolStripMenuItem18.Size := new System.Drawing.Size(188, 22);
        self.toolStripMenuItem18.Text := 'Цвет фона';
        self.toolStripMenuItem18.Click += toolStripMenuItem18_Click;
        // 
        // toolStripSeparator10
        // 
        self.toolStripSeparator10.Name := 'toolStripSeparator10';
        self.toolStripSeparator10.Size := new System.Drawing.Size(185, 6);
        // 
        // toolStripMenuItem19
        // 
        self.toolStripMenuItem19.Name := 'toolStripMenuItem19';
        self.toolStripMenuItem19.Size := new System.Drawing.Size(188, 22);
        self.toolStripMenuItem19.Text := 'Цвет системы';
        self.toolStripMenuItem19.Click += toolStripMenuItem19_Click;
        // 
        // toolStripMenuItem20
        // 
        self.toolStripMenuItem20.Name := 'toolStripMenuItem20';
        self.toolStripMenuItem20.Size := new System.Drawing.Size(188, 22);
        self.toolStripMenuItem20.Text := 'Цвет конца';
        self.toolStripMenuItem20.Click += toolStripMenuItem20_Click;
        // 
        // toolStripMenuItem30
        // 
        self.toolStripMenuItem30.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[2](self.toolStripMenuItem31, self.toolStripMenuItem32));
        self.toolStripMenuItem30.Name := 'toolStripMenuItem30';
        self.toolStripMenuItem30.Size := new System.Drawing.Size(188, 22);
        self.toolStripMenuItem30.Text := 'Цвета линий';
        // 
        // toolStripMenuItem31
        // 
        self.toolStripMenuItem31.Name := 'toolStripMenuItem31';
        self.toolStripMenuItem31.Size := new System.Drawing.Size(124, 22);
        self.toolStripMenuItem31.Text := 'Большая';
        self.toolStripMenuItem31.Click += toolStripMenuItem31_Click;
        // 
        // toolStripMenuItem32
        // 
        self.toolStripMenuItem32.Name := 'toolStripMenuItem32';
        self.toolStripMenuItem32.Size := new System.Drawing.Size(124, 22);
        self.toolStripMenuItem32.Text := 'Малая';
        self.toolStripMenuItem32.Click += toolStripMenuItem32_Click;
        // 
        // toolStripMenuItem34
        // 
        self.toolStripMenuItem34.Name := 'toolStripMenuItem34';
        self.toolStripMenuItem34.Size := new System.Drawing.Size(188, 22);
        self.toolStripMenuItem34.Text := 'Цвет введеных точек';
        self.toolStripMenuItem34.Click += toolStripMenuItem34_Click;
        // 
        // toolStripSeparator11
        // 
        self.toolStripSeparator11.Name := 'toolStripSeparator11';
        self.toolStripSeparator11.Size := new System.Drawing.Size(185, 6);
        // 
        // toolStripMenuItem35
        // 
        self.toolStripMenuItem35.Name := 'toolStripMenuItem35';
        self.toolStripMenuItem35.Size := new System.Drawing.Size(188, 22);
        self.toolStripMenuItem35.Text := 'Цвет шрифта';
        self.toolStripMenuItem35.Click += toolStripMenuItem35_Click;
        // 
        // toolStripSeparator12
        // 
        self.toolStripSeparator12.Name := 'toolStripSeparator12';
        self.toolStripSeparator12.Size := new System.Drawing.Size(185, 6);
        // 
        // toolStripMenuItem33
        // 
        self.toolStripMenuItem33.Name := 'toolStripMenuItem33';
        self.toolStripMenuItem33.Size := new System.Drawing.Size(188, 22);
        self.toolStripMenuItem33.Text := 'Цвет функций';
        self.toolStripMenuItem33.Click += toolStripMenuItem33_Click;
        // 
        // toolStripMenuItem21
        // 
        self.toolStripMenuItem21.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[12](self.toolStripMenuItem27, self.toolStripTextBox15, self.toolStripMenuItem28, self.toolStripTextBox16, self.toolStripMenuItem22, self.toolStripTextBox23, self.toolStripMenuItem23, self.toolStripTextBox24, self.toolStripMenuItem11, self.toolStripTextBox14, self.toolStripMenuItem29, self.toolStripTextBox17));
        self.toolStripMenuItem21.Name := 'toolStripMenuItem21';
        self.toolStripMenuItem21.Size := new System.Drawing.Size(126, 22);
        self.toolStripMenuItem21.Text := 'Толщина';
        // 
        // toolStripMenuItem27
        // 
        self.toolStripMenuItem27.Enabled := false;
        self.toolStripMenuItem27.Name := 'toolStripMenuItem27';
        self.toolStripMenuItem27.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem27.Text := 'Линия(большая)';
        // 
        // toolStripTextBox15
        // 
        self.toolStripTextBox15.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox15.Name := 'toolStripTextBox15';
        self.toolStripTextBox15.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem28
        // 
        self.toolStripMenuItem28.Enabled := false;
        self.toolStripMenuItem28.Name := 'toolStripMenuItem28';
        self.toolStripMenuItem28.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem28.Text := 'Линия(малая)';
        // 
        // toolStripTextBox16
        // 
        self.toolStripTextBox16.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox16.Name := 'toolStripTextBox16';
        self.toolStripTextBox16.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem22
        // 
        self.toolStripMenuItem22.Enabled := false;
        self.toolStripMenuItem22.Name := 'toolStripMenuItem22';
        self.toolStripMenuItem22.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem22.Text := 'Функция';
        // 
        // toolStripTextBox23
        // 
        self.toolStripTextBox23.BackColor := System.Drawing.SystemColors.ButtonHighlight;
        self.toolStripTextBox23.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox23.Name := 'toolStripTextBox23';
        self.toolStripTextBox23.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem23
        // 
        self.toolStripMenuItem23.Enabled := false;
        self.toolStripMenuItem23.Name := 'toolStripMenuItem23';
        self.toolStripMenuItem23.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem23.Text := 'Координаты';
        // 
        // toolStripTextBox24
        // 
        self.toolStripTextBox24.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox24.Name := 'toolStripTextBox24';
        self.toolStripTextBox24.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem11
        // 
        self.toolStripMenuItem11.Enabled := false;
        self.toolStripMenuItem11.Name := 'toolStripMenuItem11';
        self.toolStripMenuItem11.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem11.Text := 'Размер стрелки';
        // 
        // toolStripTextBox14
        // 
        self.toolStripTextBox14.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox14.Name := 'toolStripTextBox14';
        self.toolStripTextBox14.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem29
        // 
        self.toolStripMenuItem29.Enabled := false;
        self.toolStripMenuItem29.Name := 'toolStripMenuItem29';
        self.toolStripMenuItem29.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem29.Text := 'Указаные точки';
        // 
        // toolStripTextBox17
        // 
        self.toolStripTextBox17.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox17.Name := 'toolStripTextBox17';
        self.toolStripTextBox17.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem12
        // 
        self.toolStripMenuItem12.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[6](self.toolStripMenuItem1, self.toolStripTextBox25, self.toolStripMenuItem25, self.toolStripTextBox26, self.toolStripMenuItem9, self.toolStripTextBox13));
        self.toolStripMenuItem12.Name := 'toolStripMenuItem12';
        self.toolStripMenuItem12.Size := new System.Drawing.Size(126, 22);
        self.toolStripMenuItem12.Text := 'Размер';
        // 
        // toolStripMenuItem1
        // 
        self.toolStripMenuItem1.Enabled := false;
        self.toolStripMenuItem1.Name := 'toolStripMenuItem1';
        self.toolStripMenuItem1.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem1.Text := 'Линия(большая)';
        // 
        // toolStripTextBox25
        // 
        self.toolStripTextBox25.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox25.Name := 'toolStripTextBox25';
        self.toolStripTextBox25.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem25
        // 
        self.toolStripMenuItem25.Enabled := false;
        self.toolStripMenuItem25.Name := 'toolStripMenuItem25';
        self.toolStripMenuItem25.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem25.Text := 'Линия(малая)';
        // 
        // toolStripTextBox26
        // 
        self.toolStripTextBox26.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox26.Name := 'toolStripTextBox26';
        self.toolStripTextBox26.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem9
        // 
        self.toolStripMenuItem9.Enabled := false;
        self.toolStripMenuItem9.Name := 'toolStripMenuItem9';
        self.toolStripMenuItem9.Size := new System.Drawing.Size(167, 22);
        self.toolStripMenuItem9.Text := 'Указаные точки';
        // 
        // toolStripTextBox13
        // 
        self.toolStripTextBox13.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox13.Name := 'toolStripTextBox13';
        self.toolStripTextBox13.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem3
        // 
        self.toolStripMenuItem3.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[3](self.toolStripMenuItem4, self.toolStripMenuItem5, self.toolStripMenuItem38));
        self.toolStripMenuItem3.Name := 'toolStripMenuItem3';
        self.toolStripMenuItem3.Size := new System.Drawing.Size(173, 22);
        self.toolStripMenuItem3.Text := 'Точки отрисовки';
        // 
        // toolStripMenuItem4
        // 
        self.toolStripMenuItem4.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[7](self.toolStripTextBox5, self.toolStripSeparator1, self.toolStripTextBox1, self.toolStripSeparator2, self.toolStripTextBox6, self.toolStripSeparator3, self.toolStripTextBox2));
        self.toolStripMenuItem4.Name := 'toolStripMenuItem4';
        self.toolStripMenuItem4.Size := new System.Drawing.Size(187, 22);
        self.toolStripMenuItem4.Text := 'Начало координат';
        // 
        // toolStripTextBox5
        // 
        self.toolStripTextBox5.BackColor := System.Drawing.SystemColors.Window;
        self.toolStripTextBox5.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.toolStripTextBox5.CausesValidation := false;
        self.toolStripTextBox5.Enabled := false;
        self.toolStripTextBox5.Name := 'toolStripTextBox5';
        self.toolStripTextBox5.Size := new System.Drawing.Size(100, 16);
        self.toolStripTextBox5.Text := 'X';
        // 
        // toolStripSeparator1
        // 
        self.toolStripSeparator1.Name := 'toolStripSeparator1';
        self.toolStripSeparator1.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox1
        // 
        self.toolStripTextBox1.AutoToolTip := true;
        self.toolStripTextBox1.Name := 'toolStripTextBox1';
        self.toolStripTextBox1.Size := new System.Drawing.Size(100, 23);
        self.toolStripTextBox1.ToolTipText := 'X = ';
        // 
        // toolStripSeparator2
        // 
        self.toolStripSeparator2.Name := 'toolStripSeparator2';
        self.toolStripSeparator2.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox6
        // 
        self.toolStripTextBox6.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.toolStripTextBox6.Enabled := false;
        self.toolStripTextBox6.Name := 'toolStripTextBox6';
        self.toolStripTextBox6.Size := new System.Drawing.Size(100, 16);
        self.toolStripTextBox6.Text := 'Y';
        // 
        // toolStripSeparator3
        // 
        self.toolStripSeparator3.Name := 'toolStripSeparator3';
        self.toolStripSeparator3.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox2
        // 
        self.toolStripTextBox2.AutoToolTip := true;
        self.toolStripTextBox2.Name := 'toolStripTextBox2';
        self.toolStripTextBox2.Size := new System.Drawing.Size(100, 23);
        self.toolStripTextBox2.ToolTipText := 'Y = ';
        // 
        // toolStripMenuItem5
        // 
        self.toolStripMenuItem5.AutoToolTip := true;
        self.toolStripMenuItem5.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[7](self.toolStripTextBox7, self.toolStripSeparator4, self.toolStripTextBox3, self.toolStripSeparator5, self.toolStripTextBox8, self.toolStripSeparator6, self.toolStripTextBox4));
        self.toolStripMenuItem5.Name := 'toolStripMenuItem5';
        self.toolStripMenuItem5.Size := new System.Drawing.Size(187, 22);
        self.toolStripMenuItem5.Text := 'Конец координат';
        // 
        // toolStripTextBox7
        // 
        self.toolStripTextBox7.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.toolStripTextBox7.Enabled := false;
        self.toolStripTextBox7.Name := 'toolStripTextBox7';
        self.toolStripTextBox7.Size := new System.Drawing.Size(100, 16);
        self.toolStripTextBox7.Text := 'X';
        // 
        // toolStripSeparator4
        // 
        self.toolStripSeparator4.Name := 'toolStripSeparator4';
        self.toolStripSeparator4.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox3
        // 
        self.toolStripTextBox3.AutoToolTip := true;
        self.toolStripTextBox3.Name := 'toolStripTextBox3';
        self.toolStripTextBox3.Size := new System.Drawing.Size(100, 23);
        self.toolStripTextBox3.ToolTipText := 'X = ';
        // 
        // toolStripSeparator5
        // 
        self.toolStripSeparator5.Name := 'toolStripSeparator5';
        self.toolStripSeparator5.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox8
        // 
        self.toolStripTextBox8.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.toolStripTextBox8.Enabled := false;
        self.toolStripTextBox8.Name := 'toolStripTextBox8';
        self.toolStripTextBox8.Size := new System.Drawing.Size(100, 16);
        self.toolStripTextBox8.Text := 'Y';
        // 
        // toolStripSeparator6
        // 
        self.toolStripSeparator6.Name := 'toolStripSeparator6';
        self.toolStripSeparator6.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox4
        // 
        self.toolStripTextBox4.AutoToolTip := true;
        self.toolStripTextBox4.Name := 'toolStripTextBox4';
        self.toolStripTextBox4.Size := new System.Drawing.Size(100, 23);
        self.toolStripTextBox4.ToolTipText := 'Y = ';
        // 
        // toolStripMenuItem38
        // 
        self.toolStripMenuItem38.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[4](self.xToolStripMenuItem, self.toolStripTextBox18, self.yToolStripMenuItem, self.toolStripTextBox19));
        self.toolStripMenuItem38.Enabled := false;
        self.toolStripMenuItem38.Name := 'toolStripMenuItem38';
        self.toolStripMenuItem38.Size := new System.Drawing.Size(187, 22);
        self.toolStripMenuItem38.Text := 'Положение курсора';
        // 
        // xToolStripMenuItem
        // 
        self.xToolStripMenuItem.Enabled := false;
        self.xToolStripMenuItem.Name := 'xToolStripMenuItem';
        self.xToolStripMenuItem.Size := new System.Drawing.Size(160, 22);
        self.xToolStripMenuItem.Text := 'X';
        // 
        // toolStripTextBox18
        // 
        self.toolStripTextBox18.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox18.Name := 'toolStripTextBox18';
        self.toolStripTextBox18.Size := new System.Drawing.Size(100, 23);
        // 
        // yToolStripMenuItem
        // 
        self.yToolStripMenuItem.Enabled := false;
        self.yToolStripMenuItem.Name := 'yToolStripMenuItem';
        self.yToolStripMenuItem.Size := new System.Drawing.Size(160, 22);
        self.yToolStripMenuItem.Text := 'Y';
        // 
        // toolStripTextBox19
        // 
        self.toolStripTextBox19.BorderStyle := System.Windows.Forms.BorderStyle.FixedSingle;
        self.toolStripTextBox19.Name := 'toolStripTextBox19';
        self.toolStripTextBox19.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripMenuItem6
        // 
        self.toolStripMenuItem6.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[11](self.toolStripTextBox9, self.toolStripSeparator7, self.toolStripTextBox10, self.toolStripSeparator8, self.toolStripTextBox11, self.toolStripSeparator9, self.toolStripTextBox12, self.toolStripSeparator16, self.toolStripTextBox21, self.toolStripSeparator17, self.toolStripTextBox22));
        self.toolStripMenuItem6.Name := 'toolStripMenuItem6';
        self.toolStripMenuItem6.Size := new System.Drawing.Size(173, 22);
        self.toolStripMenuItem6.Text := 'Чувствительность';
        // 
        // toolStripTextBox9
        // 
        self.toolStripTextBox9.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.toolStripTextBox9.Enabled := false;
        self.toolStripTextBox9.Name := 'toolStripTextBox9';
        self.toolStripTextBox9.Size := new System.Drawing.Size(100, 16);
        self.toolStripTextBox9.Text := 'Чувств. X';
        // 
        // toolStripSeparator7
        // 
        self.toolStripSeparator7.Name := 'toolStripSeparator7';
        self.toolStripSeparator7.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox10
        // 
        self.toolStripTextBox10.Name := 'toolStripTextBox10';
        self.toolStripTextBox10.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripSeparator8
        // 
        self.toolStripSeparator8.Name := 'toolStripSeparator8';
        self.toolStripSeparator8.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox11
        // 
        self.toolStripTextBox11.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.toolStripTextBox11.Enabled := false;
        self.toolStripTextBox11.Name := 'toolStripTextBox11';
        self.toolStripTextBox11.Size := new System.Drawing.Size(100, 16);
        self.toolStripTextBox11.Text := 'Чувств. Y';
        // 
        // toolStripSeparator9
        // 
        self.toolStripSeparator9.Name := 'toolStripSeparator9';
        self.toolStripSeparator9.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox12
        // 
        self.toolStripTextBox12.Name := 'toolStripTextBox12';
        self.toolStripTextBox12.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripSeparator16
        // 
        self.toolStripSeparator16.Name := 'toolStripSeparator16';
        self.toolStripSeparator16.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox21
        // 
        self.toolStripTextBox21.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.toolStripTextBox21.Enabled := false;
        self.toolStripTextBox21.Name := 'toolStripTextBox21';
        self.toolStripTextBox21.Size := new System.Drawing.Size(100, 16);
        self.toolStripTextBox21.Text := 'Коэфициент мсш.';
        // 
        // toolStripSeparator17
        // 
        self.toolStripSeparator17.Name := 'toolStripSeparator17';
        self.toolStripSeparator17.Size := new System.Drawing.Size(157, 6);
        // 
        // toolStripTextBox22
        // 
        self.toolStripTextBox22.Name := 'toolStripTextBox22';
        self.toolStripTextBox22.Size := new System.Drawing.Size(100, 23);
        // 
        // toolStripSeparator28
        // 
        self.toolStripSeparator28.Name := 'toolStripSeparator28';
        self.toolStripSeparator28.Size := new System.Drawing.Size(170, 6);
        // 
        // toolStripMenuItem15
        // 
        self.toolStripMenuItem15.Name := 'toolStripMenuItem15';
        self.toolStripMenuItem15.Size := new System.Drawing.Size(173, 22);
        self.toolStripMenuItem15.Text := 'Функции';
        self.toolStripMenuItem15.Click += toolStripMenuItem15_Click;
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(0, 0);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(100, 20);
        self.textBox1.TabIndex := 0;
        // 
        // toolStripContainer1
        // 
        // 
        // toolStripContainer1.ContentPanel
        // 
        self.toolStripContainer1.ContentPanel.Size := new System.Drawing.Size(150, 150);
        self.toolStripContainer1.Location := new System.Drawing.Point(0, 0);
        self.toolStripContainer1.Name := 'toolStripContainer1';
        self.toolStripContainer1.Size := new System.Drawing.Size(150, 175);
        self.toolStripContainer1.TabIndex := 0;
        self.toolStripContainer1.Text := 'toolStripContainer1';
        // 
        // button9
        // 
        self.button9.Location := new System.Drawing.Point(443, 3);
        self.button9.Name := 'button9';
        self.button9.Size := new System.Drawing.Size(77, 54);
        self.button9.TabIndex := 4;
        self.button9.Text := 'Шрифт';
        self.button9.UseVisualStyleBackColor := true;
        // 
        // button5
        // 
        self.button5.Location := new System.Drawing.Point(88, 3);
        self.button5.Name := 'button5';
        self.button5.Size := new System.Drawing.Size(80, 54);
        self.button5.TabIndex := 0;
        self.button5.Text := 'Системы координат';
        self.button5.UseVisualStyleBackColor := true;
        self.button5.Click += button5_Click;
        // 
        // button8
        // 
        self.button8.Location := new System.Drawing.Point(362, 3);
        self.button8.Name := 'button8';
        self.button8.Size := new System.Drawing.Size(75, 54);
        self.button8.TabIndex := 3;
        self.button8.Text := 'Точки';
        self.button8.UseVisualStyleBackColor := true;
        // 
        // button6
        // 
        self.button6.Location := new System.Drawing.Point(3, 3);
        self.button6.Name := 'button6';
        self.button6.Size := new System.Drawing.Size(79, 54);
        self.button6.TabIndex := 1;
        self.button6.Text := 'Фон';
        self.button6.UseVisualStyleBackColor := true;
        self.button6.Click += button6_Click;
        // 
        // button13
        // 
        self.button13.Location := new System.Drawing.Point(174, 3);
        self.button13.Name := 'button13';
        self.button13.Size := new System.Drawing.Size(81, 54);
        self.button13.TabIndex := 8;
        self.button13.Text := 'Линии на системе';
        self.button13.UseVisualStyleBackColor := true;
        self.button13.Click += button13_Click;
        // 
        // tableLayoutPanel1
        // 
        self.tableLayoutPanel1.ColumnCount := 7;
        self.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 49.7109833));
        self.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.2890167));
        self.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 87));
        self.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 101));
        self.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 81));
        self.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 176));
        self.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 91));
        self.tableLayoutPanel1.Controls.Add(self.button13, 0, 0);
        self.tableLayoutPanel1.Controls.Add(self.button7, 0, 0);
        self.tableLayoutPanel1.Controls.Add(self.button6, 0, 0);
        self.tableLayoutPanel1.Controls.Add(self.button8, 1, 0);
        self.tableLayoutPanel1.Controls.Add(self.button5, 0, 0);
        self.tableLayoutPanel1.Controls.Add(self.button9, 4, 0);
        self.tableLayoutPanel1.Controls.Add(self.button12, 6, 0);
        self.tableLayoutPanel1.Location := new System.Drawing.Point(9, 402);
        self.tableLayoutPanel1.Name := 'tableLayoutPanel1';
        self.tableLayoutPanel1.RowCount := 1;
        self.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50));
        self.tableLayoutPanel1.Size := new System.Drawing.Size(708, 60);
        self.tableLayoutPanel1.TabIndex := 14;
        self.tableLayoutPanel1.Visible := false;
        // 
        // button7
        // 
        self.button7.Location := new System.Drawing.Point(261, 3);
        self.button7.Name := 'button7';
        self.button7.Size := new System.Drawing.Size(95, 54);
        self.button7.TabIndex := 2;
        self.button7.Text := 'Маркер завершения';
        self.button7.UseVisualStyleBackColor := true;
        self.button7.Click += button7_Click;
        // 
        // button12
        // 
        self.button12.Location := new System.Drawing.Point(619, 3);
        self.button12.Name := 'button12';
        self.button12.Size := new System.Drawing.Size(86, 54);
        self.button12.TabIndex := 7;
        self.button12.Text := 'Функции';
        self.button12.UseVisualStyleBackColor := true;
        // 
        // tableLayoutPanel2
        // 
        self.tableLayoutPanel2.ColumnCount := 2;
        self.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 46.0317459));
        self.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 53.9682541));
        self.tableLayoutPanel2.Controls.Add(self.button10, 0, 0);
        self.tableLayoutPanel2.Controls.Add(self.button11, 1, 0);
        self.tableLayoutPanel2.Location := new System.Drawing.Point(180, 344);
        self.tableLayoutPanel2.Name := 'tableLayoutPanel2';
        self.tableLayoutPanel2.RowCount := 1;
        self.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50));
        self.tableLayoutPanel2.Size := new System.Drawing.Size(189, 59);
        self.tableLayoutPanel2.TabIndex := 15;
        self.tableLayoutPanel2.Visible := false;
        // 
        // button10
        // 
        self.button10.Location := new System.Drawing.Point(3, 3);
        self.button10.Name := 'button10';
        self.button10.Size := new System.Drawing.Size(81, 53);
        self.button10.TabIndex := 0;
        self.button10.Text := 'Малая';
        self.button10.UseVisualStyleBackColor := true;
        // 
        // button11
        // 
        self.button11.Location := new System.Drawing.Point(90, 3);
        self.button11.Name := 'button11';
        self.button11.Size := new System.Drawing.Size(96, 53);
        self.button11.TabIndex := 1;
        self.button11.Text := 'Большая';
        self.button11.UseVisualStyleBackColor := true;
        // 
        // Form1
        // 
        self.AutoScaleMode := System.Windows.Forms.AutoScaleMode.Inherit;
        self.BackColor := System.Drawing.Color.Bisque;
        self.ClientSize := new System.Drawing.Size(731, 533);
        self.Controls.Add(self.tableLayoutPanel2);
        self.Controls.Add(self.tableLayoutPanel1);
        self.Controls.Add(self.label4);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.maskedTextBox2);
        self.Controls.Add(self.maskedTextBox1);
        self.Controls.Add(self.button4);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.pictureBox1);
        self.MinimumSize := new System.Drawing.Size(747, 571);
        self.Name := 'Form1';
        self.Text := 'Граффик';
        self.Activated += Form1_Activated;
        self.Deactivate += Form1_Deactivate;
        self.Resize += Form1_Resize;
        self.ImeModeChanged += Form1_ImeModeChanged;
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).EndInit();
        self.contextMenuStrip1.ResumeLayout(false);
        self.toolStripContainer1.ResumeLayout(false);
        self.toolStripContainer1.PerformLayout();
        self.tableLayoutPanel1.ResumeLayout(false);
        self.tableLayoutPanel2.ResumeLayout(false);
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
