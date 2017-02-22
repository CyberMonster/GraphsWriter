unit Unit1;

interface

uses
  System, System.Drawing, System.Windows.Forms, Unit2, Unit3;

const
  Def_Funct = 'x';
  DefaultTech = 2;

type
  Form1 = class(Form)
    procedure richTextBox1_KeyPress(sender: Object; e: KeyPressEventArgs);
    procedure richTextBox2_KeyPress(sender: Object; e: KeyPressEventArgs);
    procedure richTextBox1_TextChanged(sender: Object; e: EventArgs);
    procedure richTextBox2_TextChanged(sender: Object; e: EventArgs);
    procedure radioButton1_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton2_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton3_CheckedChanged(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure radioButton4_CheckedChanged(sender: Object; e: EventArgs);
    procedure richTextBox3_TextChanged(sender: Object; e: EventArgs);
    procedure rb_1(Technique_pr_: integer);
    procedure rb_2(Technique_pr_: integer);
    procedure rb_3(Technique_pr_: integer);
    procedure rb_4(Technique_pr_: integer);
    procedure richTextBox3_MouseDoubleClick(sender: Object; e: MouseEventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    richTextBox1: RichTextBox;
    richTextBox2: RichTextBox;
    label1: &Label;
    label2: &Label;
    radioButton1: RadioButton;
    radioButton2: RadioButton;
    radioButton3: RadioButton;
    label3: &Label;
    button2: Button;
    radioButton4: RadioButton;
    textBox2: TextBox;
    label4: &Label;
    label5: &Label;
    textBox3: TextBox;
    richTextBox3: RichTextBox;
    components: System.ComponentModel.IContainer;
    button1: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  private
    a_: real:=1;
    b_: real:=0;
    DSN__: string;
    Prev_Text_Func_: array of string;
    Live_Serv_: integer:= 0;
    Dir_Number: integer;
    Def_Size_RTB3: System.Drawing.Size;
    Max_Size_RTB3: System.Drawing.Size;
    Def_Location_RTB3: System.Drawing.Point;
    Max_Location_RTB3: System.Drawing.Point;

  public property a: real read a_ write a_;
  public property b: real read b_ write b_;
  public property DSN: string read DSN__ write DSN__;
  public property Prev_Text_Func: array of string read Prev_Text_Func_ write Prev_Text_Func_;
  public property Live_Serv: integer read Live_Serv_ write Live_Serv_;
  public
    proc_: procedure(Techn_: integer);
    
  public
    constructor(DSN_: string);
    const
      Delta_Height = 138;
    begin
      InitializeComponent;
      self.DSN:= DSN_;
      self.proc_:= rb_1;
      self.proc_(DefaultTech);
      self.Def_Size_RTB3:= self.richTextBox3.Size;
      self.Def_Location_RTB3:= self.richTextBox3.Location;
      self.Max_Location_RTB3:= new System.Drawing.Point(self.richTextBox3.Location.X, self.richTextBox3.Location.Y - Delta_Height);
      self.Max_Size_RTB3:= System.Drawing.Size.Create(self.richTextBox3.Size.Width, self.richTextBox3.Size.Height + Delta_Height);
    end;
  end;

var
  Technique: integer:= DefaultTech;
  n_pr_toch: boolean:= true;
  OF__: array of Unit2.Form1;
  Dll_Way: string;
  K_kompil: integer;

implementation

procedure Form1.rb_1(Technique_pr_: integer);
var
  y1: real:= 0;
  y2: real:= 0;
  x1: real:= 0;
  x2: real:= 1;
begin
  self.richTextBox3.Enabled:= false;
  self.richTextBox3.Clear;
  self.richTextBox3.Text:= Def_Funct;
  if (self.richTextBox1.Lines.Length = Technique_pr_) and (self.richTextBox2.Lines.Length = Technique_pr_)
    then
      begin
        TryStrToFloat(self.richTextBox1.Lines[0],y1);
        TryStrToFloat(self.richTextBox1.Lines[1],y2);
        TryStrToFloat(self.richTextBox2.Lines[0],x1);
        TryStrToFloat(self.richTextBox2.Lines[1],x2);
        self.richTextBox3.Clear;
        self.richTextBox3.Text:= Def_Funct;
        self.textBox2.Text:= ((y2-y1)/(x2-x1)).ToString.Replace(',','.');
        self.textBox3.Text:= (y1-((y2-y1)*x1)/(x2-x1)).ToString.Replace(',','.');
      end
    else
      begin
        self.textBox2.Text:= 'NULL';
        self.textBox3.Text:= 'NULL';
      end;
end;

procedure Form1.rb_2(Technique_pr_: integer);
begin
  
end;

procedure Form1.rb_3(Technique_pr_: integer);
var
  linesx, linesy: array of real;
  Sxx, Sx, Sxy, Sy: real;
begin
  if Prev_Text_Func <> nil
    then
      self.richTextBox3.Lines:= Prev_Text_Func;
  self.richTextBox3.Enabled:= false;
  self.richTextBox3.Clear;
  self.richTextBox3.Text:= Def_Funct;
  if (self.richTextBox1.Lines.Length >= Technique_pr_) and (self.richTextBox2.Lines.Length >= Technique_pr_) and (self.richTextBox2.Lines.Length = self.richTextBox1.Lines.Length)
  then
    try
      linesx:= self.richTextBox2.Lines.Select(x -> StrToFloat(x)).ToArray;
      linesy:= self.richTextBox1.Lines.Select(x -> StrToFloat(x)).ToArray;
      Sxx:= linesx.Select(x -> x*x).Sum;
      Sx:= linesx.Sum;
      Sy:= linesy.Sum;
      for var i:= 0 to linesx.Length-1 do
        Sxy += linesx[i] * linesy[i];
      //Messagebox.Show('Sxx, Sx, Sxy, Sy '+Sxx.tostring+' '+Sx.tostring+' '+Sxy.tostring+' '+Sy.tostring);
      var a:= (Sx*Sy - linesx.Length*Sxy)/(Sx*Sx - linesx.Length*Sxx);
      var b:= 1/linesx.Length*(Sy - a*Sx);
      self.textBox2.Text:= a.ToString.Replace(',','.');
      self.textBox3.Text:= b.ToString.Replace(',','.');
    except
      self.textBox2.Text:= 'NULL';
      self.textBox3.Text:= 'NULL';
    end
  else
    begin
      self.textBox2.Text:= 'NULL';
      self.textBox3.Text:= 'NULL';
    end;
end;

procedure Form1.rb_4(Technique_pr_: integer);
begin
  if Prev_Text_Func <> nil
    then
      self.richTextBox3.Lines:= Prev_Text_Func;
  self.richTextBox3.Enabled:= true;
  self.textBox2.Text:= {self.richTextBox3.Lines.Length.ToString;}'--| |--';
  self.textBox3.Text:= '--| |--';
end;





procedure CheckedChanged(Object_:integer);
begin
  Technique:= Object_;
end;

procedure Form1.richTextBox1_KeyPress(sender: Object; e: KeyPressEventArgs);

var
  nfi: System.Globalization.NumberFormatInfo;
begin
  try
    if e.KeyChar = ','
      then
        e.KeyChar:= '.';
    Convert.ToDouble('0'+e.KeyChar, nfi);
  except
    case e.KeyChar of
      #10:
          e.Handled:=false;
      '-':
          e.Handled:=false;
      '.':
          e.Handled:=false;
      else
        e.Handled:=true;
    end;
  end;
end;

procedure Form1.richTextBox2_KeyPress(sender: Object; e: KeyPressEventArgs);

var
  nfi: System.Globalization.NumberFormatInfo;
begin
  try
    if e.KeyChar = ','
      then
        e.KeyChar:= '.';
    Convert.ToDouble('0'+e.KeyChar, nfi);
  except
    case e.KeyChar of
      #10:
          e.Handled:=false;
      '-':
          e.Handled:=false;
      '.':
          e.Handled:=false;
      else
        e.Handled:=true;
    end;
  end;
end;

procedure Form1.richTextBox1_TextChanged(sender: Object; e: EventArgs);

var
  lines:array of string;
  line:string;
  Dot:boolean;
  Counter:integer;
  Dot_Counter:integer;
  Start_Point:integer:=richTextBox1.SelectionStart;
  key_bool: byte:= 0;

begin
  lines:=richTextBox1.Lines;
  if lines.length=0
    then
      exit;
  for Counter:= 0 to lines.length-1 do
    begin
      Dot:=false;
      try
        line:=lines[Counter];
      except
        exit;
      end;
      for Dot_Counter:=1 to line.Length{-cl_count} do
        if (Dot=false) and (line[Dot_Counter]='.')
          then
            Dot:=true
          else
            if line[Dot_Counter]='.'
              then
                begin
                  Delete(line,Dot_Counter,1);
                  //cl_count += 1;
                  key_bool:= 1;
                  break;
                end
              else
                if Dot_Counter <> 1
                  then
                    if line[Dot_Counter]='-'
                      then
                        begin
                          Delete(line,Dot_Counter,1);
                          //cl_count +=1;
                          key_bool:= 1;
                          break;
                        end;
      lines[Counter]:=line;
    end;
  richTextBox1.Lines:=lines;
  richTextBox1.SelectionStart:=Start_Point-key_bool;
  if (richTextBox1.Lines.Length=richTextBox2.Lines.Length)
    and (richTextBox1.Lines.Length >= Technique)
      then
        begin
          button1.Enabled:=true;
          if (richTextBox1.Lines.Length <> Technique) and (n_pr_toch = true)
            then
              button1.Enabled:= false;
        end
      else
        button1.Enabled:=false;
  self.proc_(Technique);
end;


procedure Form1.richTextBox2_TextChanged(sender: Object; e: EventArgs);

var
  lines:array of string;
  line:string;
  Dot:boolean;
  Counter:integer;
  Dot_Counter:integer;
  Start_Point:integer:=richTextBox1.SelectionStart;
  minus_bool: byte:= 0;

begin
  lines:=richTextBox1.Lines;
  if lines.length=0
    then
      exit;
  for Counter:= 0 to lines.length-1 do
    begin
      Dot:=false;
      try
        line:=lines[Counter];
      except
        exit;
      end;
      for Dot_Counter:=1 to line.Length{-cl_count} do
        if (Dot=false) and (line[Dot_Counter]='.')
          then
            Dot:=true
          else
            if line[Dot_Counter]='.'
              then
                begin
                  Delete(line,Dot_Counter,1);
                  //cl_count += 1;
                  break;
                end
              else
                if Dot_Counter <> 1
                  then
                    if line[Dot_Counter]='-'
                      then
                        begin
                          Delete(line,Dot_Counter,1);
                          //cl_count +=1;
                          minus_bool:= 1;
                          break;
                        end;
      lines[Counter]:=line;
    end;
  richTextBox1.Lines:=lines;
  richTextBox1.SelectionStart:=Start_Point-minus_bool;
  if (richTextBox1.Lines.Length=richTextBox2.Lines.Length)
    and (richTextBox1.Lines.Length >= Technique)
      then
        begin
          button1.Enabled:=true;
          if (richTextBox1.Lines.Length <> Technique) and (n_pr_toch = true)
            then
              button1.Enabled:= false;
        end
      else
        button1.Enabled:=false;
  self.proc_(Technique);
end;


procedure Form1.radioButton1_CheckedChanged(sender: Object; e: EventArgs);
begin
  self.proc_:= rb_1;
  CheckedChanged(2);
  self.proc_(Technique);
  n_pr_toch:= true;
  if (richTextBox1.Lines.Length = richTextBox2.Lines.Length)
      and (richTextBox1.Lines.Length = Technique)
          then
            button1.Enabled:=true
          else
            button1.Enabled:=false;
end;

procedure Form1.radioButton2_CheckedChanged(sender: Object; e: EventArgs);
begin
  CheckedChanged(2);
  self.proc_(Technique);
  n_pr_toch:= false;
  self.richTextBox3.Clear;
  self.richTextBox3.Text:= Def_Funct;
  if (richTextBox1.Lines.Length = richTextBox2.Lines.Length)
      and (richTextBox1.Lines.Length = Technique)
          then
            button1.Enabled:=true
          else
            button1.Enabled:=false;
end;

procedure Form1.radioButton3_CheckedChanged(sender: Object; e: EventArgs);
begin
  self.proc_:= rb_3;
  CheckedChanged(2);
  self.proc_(Technique);
  n_pr_toch:= false;
  self.richTextBox3.Clear;
  self.richTextBox3.Text:= Def_Funct;
  if (richTextBox1.Lines.Length = richTextBox2.Lines.Length)
      and (richTextBox1.Lines.Length = Technique)
          then
            button1.Enabled:= true
          else
            button1.Enabled:= false;
end;

procedure Form1.radioButton4_CheckedChanged(sender: Object; e: EventArgs);
begin
  self.proc_:= rb_4;
  CheckedChanged(2);
  self.proc_(Technique);
  n_pr_toch:= false;
  if (richTextBox1.Lines.Length = richTextBox2.Lines.Length)
      and (richTextBox1.Lines.Length = Technique)
          then
            button1.Enabled:=true
          else
            button1.Enabled:=false;
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
const
  f1='RTB1.txt';
  f2='RTB2.txt';
var
  Form_: Unit2.Form1;
  arr: array of string;
  File_: PABCSystem.Text;
  Counter: integer;
  H_DF: array of system.Windows.Forms.Form;
begin

  //richTextBox1.SaveFile('RTB1.txt', RichTextBoxStreamType.TextTextOleObjs);
  //richTextBox2.SaveFile('RTB2.txt', RichTextBoxStreamType.TextTextOleObjs);
  
  {try
    Assign(File_,f1);
    Rewrite(File_);
    arr:= self.richTextBox1.Lines;
    for Counter:= 0 to arr.Length-1 do
      Writeln(File_,arr[Counter]);
    File_.Close;
  except
  end;}
  
  //RichTextBoxStreamType.RichNoOleObjs
  //arr:= self.richTextBox1.Lines;
  //StrToFloat(arr[1]);
  //arr:= System.IO.File.ReadAllLines('RTB1.txt');
  //StrToFloat(arr[1]);
  //Execute('Fname.exe');
  System.IO.File.WriteAllLines('RTB1.txt', self.richTextBox1.Lines, System.Text.Encoding.UTF8);
  System.IO.File.WriteAllLines('RTB2.txt', self.richTextBox2.Lines, System.Text.Encoding.UTF8);
  var a:= self.textBox2.Text;
  var b:= self.textBox3.Text;
  try
    StrToFloat(a);
  except
    a:= '1';
  end;
  try
    StrToFloat(b);
  except
    b:= '0';
  end;
  var Work_Directory_:= System.Environment.CurrentDirectory+'\DL_'+(K_kompil-1).ToString+'\'+'WF_'+Dir_Number.ToString;
  System.IO.Directory.CreateDirectory(Work_Directory_);
  var pr_arr:= self.richTextBox3.Lines.Select(x -> '1 ');
  System.IO.File.WriteAllLines(Work_Directory_+'\'+'Enabled_.txt', pr_arr);
  Dir_Number += 1;
  Form_:= Unit2.Form1.Create(StrToFloat(a),StrToFloat(b),Dll_Way,Work_Directory_,self.DSN);
  SetLength(OF__,OF__.Length+1);
  OF__[OF__.Length-1]:= Form_;
  Form_.Show();
  //self.DF1:= Form_;
  //MessageBox.Show((H_DF.Length+1).ToString);
  

end;

procedure Form1.richTextBox3_TextChanged(sender: Object; e: EventArgs);
begin
  self.button2.Enabled:=true;
  if richTextBox3.Lines.Length > 0
    then
      if (richTextBox3.Lines[0] <> Def_Funct) or (richTextBox3.Lines.Length > 1)
        then
          self.Prev_Text_Func_:= self.richTextBox3.Lines;
end;

procedure Form1.richTextBox3_MouseDoubleClick(sender: Object; e: MouseEventArgs);
begin
  if self.richTextBox3.Size <> self.Def_Size_RTB3
    then
      begin
        self.richTextBox3.Size:= self.Def_Size_RTB3;
        self.richTextBox3.Location:= self.Def_Location_RTB3;
      end
    else
      begin
        self.richTextBox3.Size:= self.Max_Size_RTB3;
        self.richTextBox3.Location:= self.Max_Location_RTB3;
      end;
  self.richTextBox3.Focus;
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
var
  IStr: array of string;
  All_Else_Text:array of string;
  Hmass:array of string;
  CD,CD1:string;
  enter_const:= 8; //if changed, change in unit 4 too
  //fr_: array of System.Windows.Forms.Form;
begin
  //fr_:= self.OwnedForms;
  //for var i: integer:= 0 to fr_.Length - 1 do
  {try
    for var i: integer:= 0 to OF__.Length - 1 do
      OF__[i].Close;
  except
  end;}
  //  fr_[i].Close;
  //self.ActiveMdiChild();
  //self.
  try
    //self.DF.Handle
    //self.DF1.DestroyHandle();
    //self.DF1.Dispose();
    {for var i: integer:= 0 to self.DF.Length do
      self.DF_[i].Dispose();}
  except
  end;
  //self.DF1.dispose();
  IStr:= self.richTextBox3.Lines;//.Select((x,i) -> 'result['+i.ToString+']:='+x+';').ToArray;
  for var i:= 0 to IStr.Length-1 do
    IStr[i]:= 'result['+i.ToString+']:= '+IStr[i]+';';
  SetLength(IStr,IStr.Length+1);
  for var i:= IStr.Length-1 downto 1 do
    Istr[i]:= IStr[i-1];
  IStr[0]:='SetLength(Result, '+(IStr.Length-1).ToString+');';
  All_Else_Text:= System.IO.File.ReadAllLines('All_Else_Strings(dll compile).txt');
  Hmass:= new string[All_Else_Text.Length+IStr.Length];
  for var i:= 0 to enter_const do
    Hmass[i]:= All_Else_Text[i];
  for var i:= 0 to Istr.Length-1 do
    Hmass[i+enter_const]:= Istr[i];
  for var i:= enter_const +1 to All_Else_Text.Length do
    Hmass[Istr.Length-1+i]:= All_Else_Text[i-1];
  //WriteLines('func_My.pas',All_Else_Text);
  CD1:=GetCurrentDir;
  MkDir('DL_' + K_kompil.ToString);
  System.IO.File.WriteAllLines(CD1+'\'+'DL_' + K_kompil.ToString+'\'+'func_My.pas',Hmass);
  CD:=GetCurrentDir;
  //MessageBox.Show(CD);
  //System.Console.ReadKey;
  try
    CD:=CD+'\'+'PABCNETC'+'\'+'pabcnetc.exe';
    
    Execute(CD,'"'+CD1+'\'+'DL_' + K_kompil.ToString+'\'+'func_My.pas'+'"');
  except
    Writeln('Компонент:',CD,' не найден');
    raise new System.Exception('Обратитесь к разработчику ПО');
  end;
  //MkDir('DL_' + K_kompil.ToString);
  //MessageBox.Show((CD1+'\'+'DL_'+K_kompil.ToString)+'    '+(CD1+'\'+'func_My.dll'));
  {System.IO.File.Create(CD1+'\'+'DL_'+K_kompil.ToString+'\'+'func_My.dll').Close;
  System.IO.File.Copy((CD1+'\'+'func_My.dll'),(CD1+'\'+'DL_'+K_kompil.ToString+'\'+'nf.txt'),true);
  System.IO.File.Move((CD1+'\'+'DL_'+K_kompil.ToString+'\'+'func_My.dll'),(CD1+'\'+'DL_'+K_kompil.ToString+'\'+'func_My.dll'));}
  Dll_Way:= CD1+'\'+'DL_'+K_kompil.ToString+'\'+'func_My.dll';
  //MessageBox.Show(Dll_Way);
  self.button2.Enabled:= false;
  K_kompil+=1;
  self.Dir_Number:= 0;
end;

initialization

  begin
    OF__:= new Unit2.Form1[1];
  end;
end.