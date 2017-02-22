Unit Unit4;

interface

uses System, System.Drawing, System.Windows.Forms, Unit3;

const
  Way_Colors = 'Colors.txt';
  Buttons_Height = 25;

type
  Form1 = class(Form)
    procedure button_Click(sender: Object; e: EventArgs);
    procedure checkBox_CheckedChanged(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit4.Form1.resources}
    button1: Button;
    button2: Button;
    colorDialog1: ColorDialog;
    {$include Unit4.Form1.inc}
  {$endregion FormDesigner}
  public
    Ch_Box_Arr: array of System.Windows.Forms.CheckBox;
    Color_Arr: array of System.Drawing.Color;
    Bottoms_Arr: array of System.Windows.Forms.Button;
    Func_Enabled_Arr: array of boolean;
    DSN__: string;
    IStr_: array of string;
    Prev_Directory_: string;
    Work_Directory_: string;
    Handle___: System.IntPtr;

  public property DSN: string read DSN__ write DSN__;
  public property IStr: array of string read IStr_ write IStr_;
  public property Prev_Directory: string read Prev_Directory_ write Prev_Directory_;
  public property Work_Directory: string read Work_Directory_ write Work_Directory_;
  public property Handle__: System.IntPtr read Handle___ write Handle___;

  public
    constructor(Handle_: System.IntPtr; dl_Way, Fs_Way, DSN_: string);
    const
      enter_const = 8+1;
    var
      i: integer;
    begin
      InitializeComponent;
      self.Handle__:= Handle_;
      self.Prev_Directory:= System.Environment.CurrentDirectory;
      self.Work_Directory:= Fs_Way+'\';
      System.Environment.CurrentDirectory:= Work_Directory;
      //MessageBox.Show(Fs_Way);
      self.AutoScroll:= true;
      self.DSN:= DSN_;
      if System.IO.File.Exists('Enabled_.txt')
        then
          //Func_Enabled_Arr:= System.IO.File.ReadAllLines('Enabled_.txt').Select(x -> x = '1 ').ToArray
          begin
            self.IStr:= System.IO.File.ReadAllLines('Enabled_.txt');
            Func_Enabled_Arr:= new boolean[self.IStr.Length];
            for var x:= 0 to self.IStr.Length-1 do
              if self.IStr[x] = '1 '
                then
                  Func_Enabled_Arr[x]:= true
                else
                  Func_Enabled_Arr[x]:= false;
          end
        else
          Unit3.Form1.Create('Файл пропущен: Enabled_.txt','Продолжить','Завершить',self.DSN).Show;
      if System.IO.File.Exists('Colors.txt')
        then
          //Color_Arr:= ReadAllLines(Way_Colors,System.Text.Encoding.UTF7).Select(x -> System.Drawing.Color.FromArgb(StrToInt(x))).ToArray;
          begin
            self.IStr:= System.IO.File.ReadAllLines(Way_Colors,System.Text.Encoding.UTF7);
            Color_Arr:= new System.Drawing.Color[self.IStr.Length];
            for var x:= 0 to self.IStr.Length-1 do
              Color_Arr[x]:= System.Drawing.Color.FromArgb(StrToInt(IStr[x]));
          end
        else
          Unit3.Form1.Create('Пропущен файл: '+Way_Colors,'Продолжить','Завершить',self.DSN).Show;
      dl_Way:= Copy(dl_Way,1,Pos('.dll',dl_Way))+'pas';
      if System.IO.File.Exists(dl_Way)
        then
          try
            self.IStr:= System.IO.File.ReadAllLines(dl_Way,System.Text.Encoding.UTF8);
          except
            Unit3.Form1.Create('Произошла ошибка при попытке чтения файла: '+dl_Way,'Продолжить','Завершить',self.DSN).Show;
          end
        else
          Unit3.Form1.Create('Пропущен файл: '+dl_Way,'Продолжить','Завершить',self.DSN).Show;
      for i:= enter_const to self.IStr.Length-1 do
        if self.Istr[i] = 'end;'
          then
            break;
      var ec:= i-1;
      Ch_Box_Arr:= new System.Windows.Forms.CheckBox[0];//[ec-enter_const];
      Bottoms_Arr:= new System.Windows.Forms.Button[0];
      self.Size.Height:= 13+(ec-enter_const)*24;
      self.SuspendLayout();
      for i:= enter_const to ec do
        begin
          //535; 13

          //642; 13
          //20*20

          SetLength(Ch_Box_Arr,Ch_Box_Arr.Length+1);
          SetLength(Bottoms_Arr,Bottoms_Arr.Length+1);

          self.Ch_Box_Arr[Ch_Box_Arr.length-1]:= new System.Windows.Forms.CheckBox();
          self.Ch_Box_Arr[Ch_Box_Arr.length-1].Location := new System.Drawing.Point(13, self.button1.Location.Y+self.button1.Size.Height+13+(i-enter_const)*(Buttons_Height+4));
          self.Ch_Box_Arr[Ch_Box_Arr.length-1].Name := 'checkBox'+(i-enter_const).ToString;
          self.Ch_Box_Arr[Ch_Box_Arr.length-1].Size := new System.Drawing.Size(409, Buttons_Height);
          self.Ch_Box_Arr[Ch_Box_Arr.length-1].TabIndex := 0;
          //self.Ch_Box_Arr[Ch_Box_Arr.length-1].Text := 'checkBox1';
          Ch_Box_Arr[Ch_Box_Arr.length-1].Text:= self.Istr[i];
          self.Ch_Box_Arr[Ch_Box_Arr.length-1].UseVisualStyleBackColor := true;
          self.Ch_Box_Arr[Ch_Box_Arr.length-1].CheckedChanged += checkBox_CheckedChanged;
          if Func_Enabled_Arr <> nil
            then
              self.Ch_Box_Arr[Ch_Box_Arr.length-1].Checked:= Func_Enabled_Arr[Ch_Box_Arr.length-1];
          self.Controls.Add(self.Ch_Box_Arr[Ch_Box_Arr.length-1]);
          // 
          // button
          // 
          self.Bottoms_Arr[Bottoms_Arr.length-1]:= new System.Windows.Forms.Button;
          if Color_Arr <> nil
            then
              self.Bottoms_Arr[Bottoms_Arr.length-1].BackColor := Color_Arr[i-enter_const];
          self.Bottoms_Arr[Bottoms_Arr.length-1].Location := new System.Drawing.Point(427, self.button1.Location.Y+self.button1.Size.Height+13+(i-enter_const)*(Buttons_Height+4));
          self.Bottoms_Arr[Bottoms_Arr.length-1].Name := ('button'+(i-enter_const).ToString);
          self.Bottoms_Arr[Bottoms_Arr.length-1].Size := new System.Drawing.Size(100, Buttons_Height);
          self.Bottoms_Arr[Bottoms_Arr.length-1].TabIndex := 1;
          self.Bottoms_Arr[Bottoms_Arr.length-1].UseVisualStyleBackColor := false;
          self.Controls.Add(self.Bottoms_Arr[Bottoms_Arr.length-1]);
          self.Bottoms_Arr[Bottoms_Arr.length-1].Click += button_Click;

        end;
      System.Windows.Forms.Form.FromHandle(self.Handle__).OnImeModeChanged(System.EventArgs.Empty);
      self.ResumeLayout(false);
      //self.Update;
      System.Environment.CurrentDirectory:= self.Prev_Directory;
    end;
  end;

implementation

procedure Form1.button_Click(sender: Object; e: EventArgs);
var
  arr_Col: array of string;
begin
  self.Cursor:= System.Windows.Forms.Cursors.WaitCursor;
  System.Environment.CurrentDirectory:= self.Work_Directory;
  for var i:= 0 to self.Bottoms_Arr.Length-1 do
    if self.Bottoms_Arr[i].GetHashCode = sender.GetHashCode
      then
        begin
          self.colorDialog1.Color:= self.Bottoms_Arr[i].BackColor;
          break;
        end;
  self.colorDialog1.ShowDialog;
  for var i:= 0 to self.Bottoms_Arr.Length-1 do
    if self.Bottoms_Arr[i].GetHashCode = sender.GetHashCode
      then
        self.Bottoms_Arr[i].BackColor:= self.colorDialog1.Color;
  self.Color_Arr:= self.Bottoms_Arr.Select(x -> x.BackColor).ToArray;
  arr_Col:= new string[self.Color_Arr.Length];
  for var i:= 0 to self.Color_Arr.Length-1 do
    arr_Col[i]:= self.Color_Arr[i].ToArgb.ToString;
  System.IO.File.WriteAllLines(Way_Colors,arr_Col,System.Text.Encoding.UTF7);
  System.Environment.CurrentDirectory:= self.Prev_Directory;
  self.Cursor:= System.Windows.Forms.Cursors.Default;
  System.Windows.Forms.Form.FromHandle(self.Handle__).OnImeModeChanged(System.EventArgs.Empty);
end;

procedure Form1.checkBox_CheckedChanged(sender: Object; e: EventArgs);
begin
  self.Cursor:= System.Windows.Forms.Cursors.WaitCursor;
  System.Environment.CurrentDirectory:= self.Work_Directory_;
  var pr_arr:= new string[self.Ch_Box_Arr.Length];
  for var x:= 0 to self.Ch_Box_Arr.Length-1 do
    if self.Ch_Box_Arr[x].Checked = true
      then
        pr_arr[x]:= '1 '
      else
        pr_arr[x]:= '0 ';
  System.IO.File.WriteAllLines('Enabled_.txt', pr_arr);
  System.Environment.CurrentDirectory:= self.Prev_Directory;
  self.Cursor:= System.Windows.Forms.Cursors.Default;
  System.Windows.Forms.Form.FromHandle(self.Handle__).OnImeModeChanged(System.EventArgs.Empty);
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  self.Cursor:= System.Windows.Forms.Cursors.WaitCursor;
  foreach var x in self.Ch_Box_Arr do
    x.Checked:= false;
  self.Cursor:= System.Windows.Forms.Cursors.Default;
  //for var i:= 0 to Ch_Box_Arr.Length-1 do
  //  Ch_Box_Arr[i].Checked:= false;
  //System.Windows.Forms.Form.FromHandle(self.Handle__).OnImeModeChanged(System.EventArgs.Empty);
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  self.Cursor:= System.Windows.Forms.Cursors.WaitCursor;
  foreach var x in self.Ch_Box_Arr do
    x.Checked:= true;
  self.Cursor:= System.Windows.Forms.Cursors.Default;
  //for var i:= 0 to Ch_Box_Arr.Length-1 do
  //  Ch_Box_Arr[i].Checked:= true;
  //System.Windows.Forms.Form.FromHandle(self.Handle__).OnImeModeChanged(System.EventArgs.Empty);
end;

end.