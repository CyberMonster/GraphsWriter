Unit Unit2;

//!!!!! Для получения handle из dll, использовать GetModuleHandle(); для выгрузки FreeLibrary(Handle); сборка Microsoft.TeamFoundation.Common.dll

interface

uses System, System.Drawing, System.Windows.Forms, PABCSystem{, func_My}, Unit3, Unit4;

const
  WayDebug = 'EWP.dat';
  WayColors_File = 'Colors.txt';
  WayEnabled_File = 'Enabled_.txt';

var
  file_: PABCSystem.Text;
type
  mass_my_for_func = array of real;
type
  Form1 = class(Form)
    public
      procedure toolStripMenuItem15_Click(sender: Object; e: EventArgs);
      procedure read_valies(path1, path2: string; Encoding_: System.Text.Encoding);
    {procedure read_valies(path1, path2: string; Encoding_: System.Text.Encoding);
    var
      val:integer;
      f:PABCSystem.Text;
      Counter: integer;
      str:string;
      
      bit:Bitmap;
      pen_:pen;
      Graph: System.Drawing.Graphics;
      Brush_: System.Drawing.Brush;
      Interf_: IWin32Window;
    
    begin
    
      TryStrToInt(maskedtextBox1.Text,val);
      self.AmountOfDots:= Val;
      self.Valuesx:=System.IO.File.ReadAllLines('RTB2.txt', System.Text.Encoding.UTF8);
      self.Valuesy:=System.IO.File.ReadAllLines('RTB1.txt',System.Text.Encoding.UTF8);
      self.maxx:=strtofloat(self.Valuesx[0]);
      self.minx:=self.maxx;
    
      for Counter:= 1 to self.Valuesx.Length-1 do
        if strtofloat(self.Valuesx[Counter])>self.maxx
          then
            self.maxx:=strtofloat(self.Valuesx[Counter])
          else
            if strtofloat(self.Valuesx[Counter])<self.minx
              then
                self.minx:=strtofloat(self.Valuesx[Counter]);
    
      self.maxy:=strtofloat(self.Valuesy[0]);
      self.miny:=self.maxy;
      for Counter:= 1 to self.Valuesy.Length-1 do
        if strtofloat(self.Valuesy[Counter])>self.maxy
          then
            self.maxy:=strtofloat(self.Valuesy[Counter])
          else
            if strtofloat(self.Valuesy[Counter])<self.miny
              then
                self.miny:=strtofloat(self.Valuesy[Counter]);
    
      self.maskedTextBox1.Text:= IntToStr(self.Valuesx.Length-1);
      self.SFPS:=true;
    end;}
    public
      function StrToFloat(s: string): real;
      procedure Form1_Resize(sender: Object; e: EventArgs);
      procedure R_S;
      procedure Form1_Activated(sender: Object; e: EventArgs);
      procedure button1_Click(sender: Object; e: EventArgs);
      procedure button2_Click(sender: Object; e: EventArgs);
      procedure button3_Click(sender: Object; e: EventArgs);
      procedure saveFileDialog1_FileOk(sender: Object; e: System.ComponentModel.CancelEventArgs);
      ///Вызывает отрисовку пометки на pictureBox1 длиной Count_ с точки Point_ в объект Graph
      procedure Stepx(Pen_: System.Drawing.Pen; Point_:System.Drawing.PointF; var Graph: System.Drawing.Graphics; const_:integer);
      ///Вызывает отрисовку пометки на pictureBox1 длиной Count_ с точки Point_ в объект Graph
      procedure Stepy(Pen_: System.Drawing.Pen; Point_:System.Drawing.PointF; var Graph: System.Drawing.Graphics; const_:integer);
      ///Вызывает отрисовку креста на месте, с координатами point в объект Graph, размерами const_*const_;
      procedure DrawX_(Pen_: System.Drawing.Pen; point: System.Drawing.PointF; var Graph: System.Drawing.Graphics; const_:integer);
      ///Вызывает перерисовку pictureBox1
      procedure nt;
      procedure Refrash_Lines;
      function H_T_Swap_r(a: string): real;
      function H_T_Swap_i(a: string): integer;
      procedure button4_Click(sender: Object; e: EventArgs);
      procedure Abord_Closing_toolStripMenuItem(sender: Object; e: System.Windows.Forms.ToolStripDropDownClosingEventArgs);
      function Normalize_Functions(IAr: array of System.Drawing.PointF): array of array of System.Drawing.PointF;
      function Normalize_Functions_MM(IAr: array of System.Drawing.PointF; Funct_: integer): array of System.Drawing.PointF;

  private
    ///Корректеровка, положения кнопок, при изменении размера
    Correct_For_Bottoms: integer;
    maxx_: real;
    maxy_: real;
    minx_: real;
    miny_: real;
    a_,b_: real;
    Point_: integer;
    Values_x: array of string;
    Values_y: array of string;
    RectangleB_: boolean:= false;
    FPS_: integer;
    SFPS_: boolean:= false;
    PVal1PX_X_: real;
    PVal1PX_Y_: real;
    Rectangle_: System.Drawing.Rectangle;
    End_Y_Par_: integer;
    Zoom_Par_: real:=2;
    Current_Dll_Loaded_: System.Reflection.Assembly;

    ///Размер длинной линии системы координат (подписанной)
    Long_Line_: integer:= 9;
    ///Размер короткой линии системы координат (не подписанной)
    Short_Line_: integer:= 3;
    ///Размер маркера вводимых значений
    XLine_: integer:= 2;
    ///Отступ слева от PictureBox
    startx_: integer:= 0+Long_Line_;
    ///Отступ снизу PictureBox
    starty_: integer:= 0+Long_Line_;
    ///Расстояние в px, от конца облости отображения до отображения координатной сетки
    endx__: integer:= 20;
    ///Расстояние в px, от конца облости отображения до отображения координатной сетки
    endy__: integer:= 20;
    ///Расстояние от текста до координатной сетки
    CorrectOutY_: integer:= 10;
    ///Расстояние от текста до координатной сетки
    CorrectOutX_: integer:= 10;
    ///Размер треугольника завершения системы координат
    Pen_Line_End_Const_: integer:= 5;
    ///Параметры положения мыши до наступления события смещения
    M_Ch_Args_: System.Drawing.Point;
    ///Чувствительность X
    Sence_X_: real:= 40;
    ///Чувствительность Y
    Sence_Y_: real:= 40;
    ob_func_: object;
    _dllWay_: string;
    _Debug_File_: string;
    DSN__: string;
    FRun_: boolean:= true;
    Live_Serv_: byte;
    Enabled_Arr_Func__: array of boolean;
    Files_Working_Directory_: string;
    ///Корневая деректория проекта
    Work_Directory: string:= System.Environment.CurrentDirectory;
    ///Цвет системы координат
    Coordinats_System_Color_: System.Drawing.Color:= System.Drawing.Color.Black;
    ///Цвет маркера завершения координат
    Coordinats_End_System_Color_: System.Drawing.Color:= System.Drawing.Color.Black;
    fn_my_: array of real;
    Dash_Of_Func_Line_: System.Drawing.Drawing2D.LineCap:= System.Drawing.Drawing2D.LineCap.Round;
    Width_Func_Line_: integer:= 1;
    Width_Coordinates_: integer:= 1;
    ///Параметр, показывающий, активна ли
    ///форма в данный момент времени
    Form_Active_: boolean;
    ///Параметр, показывающий, необходимость
    ///полной перерисовки формы и всех ф-ий
    Hand_Active_: boolean;
    Prev_Pos_Context_Menu_: System.Drawing.Point;
    Long_Line_Width_: integer:= 1;
    Short_Line_Width_: integer:= 1;
    Width_Of_XLine_: integer:= 1;
    Long_Line_Color_: System.Drawing.Color:= System.Drawing.Color.Black;
    Short_Line_Color_: System.Drawing.Color:= System.Drawing.Color.Black;
    XLine_Color_: System.Drawing.Color:= System.Drawing.Color.Black;
    Font_Color_: System.Drawing.Color:= System.Drawing.Color.Black;
    Clear_RectangleB_: boolean;
    High_Quality_: boolean;

  public
    Fpen_: array of System.Drawing.Pen;

  ///Размер линии с подписью
  public property Long_Line: integer read Long_Line_ write Long_Line_;
  ///Размер линии без подписи
  public property Short_Line: integer read Short_Line_ write Short_Line_;
  ///Размер пометок введеных точек
  public property XLine: integer read XLine_ write XLine_;
  ///Расстояние от левой границы области отображения
  ///до начала отображения надписей
  public property startx: integer read startx_ write startx_;
  ///Расстояние от нижней границы области отображения
  ///до начала отображения надписей
  public property starty: integer read starty_ write starty_;
  public property endx_: integer read endx__ write endx__;
  public property endy_: integer read endy__ write endy__;
  public property CorrectOutY: integer read CorrectOutY_ write CorrectOutY_;
  public property CorrectOutX: integer read CorrectOutX_ write CorrectOutX_;
  ///Размер стрелки завершения координат
  public property Pen_Line_End_Const: integer read Pen_Line_End_Const_ write Pen_Line_End_Const_;

  ///Максимальное значение x
  public property maxx: real read maxx_ write maxx_;
  ///Максимальное значение y
  public property maxy: real read maxy_ write maxy_;
  ///Минимальное значение x
  public property minx: real read minx_ write minx_;
  ///Минимальное значение y
  public property miny: real read miny_ write miny_;
  ///Коэфициент a в уравнении y=ax+b
  public property a: real read a_ write a_;
  ///Коэфициент b в уравнении y=ax+b
  public property b: real read b_ write b_;
  ///Количество подписаных значений
  public property AmountOfDots: integer read Point_ write Point_;
  ///Количество FPS
  public property FPS: integer read FPS_ write FPS_;
  ///Значение x, соответствующее 1му PX
  public property PVal1PX_X: real read PVal1PX_X_ write PVal1PX_X_;
  ///Значение y, соответствующее 1му PX
  public property PVal1PX_Y: real read PVal1PX_Y_ write PVal1PX_Y_;
  ///Допустимая область отрисовки
  public property Rectangle: System.Drawing.Rectangle read Rectangle_ write Rectangle_;
  public property End_Y_Par: integer read End_Y_Par_ write End_Y_Par_;
  ///Значения аргумента функции
  private property Valuesx: array of string Read Values_x write Values_x;
  ///Значения функции
  private property Valuesy: array of string Read Values_y write Values_y;
  ///Указывает, следует ли выводить систему координат в виде квадрата
  public property RectangleB: boolean read RectangleB_ write RectangleB_;
  //NE PACHET
  ///Выводит FPS в методе nt при true
  public property SFPS: boolean read SFPS_ write SFPS_;
  ///Предидущие координаты мыши на экране. Используются
  ///для определения направления движения графика
  public property M_Ch_Args: System.Drawing.Point read M_Ch_Args_ write M_Ch_Args_;
  ///Чувствительность X
  public property Sence_X: real read Sence_X_ write Sence_X_;
  ///Чувствительность Y
  public property Sence_Y: real read Sence_Y_ write Sence_Y_;
  ///Свойство чуствительности масштабирования
  public property Zoom_Par: real read Zoom_Par_ write Zoom_Par_;
  ///Загруженная .dll (функция для отрисовки)
  public property Current_Dll_Loaded: System.Reflection.Assembly read Current_Dll_Loaded_ write Current_Dll_Loaded_;
  ///Объект хранщий класс из сборки с пользовательскими функциями
  public property ob_func: object read ob_func_ write ob_func_;
  ///Путь к сборке, хранящей
  ///введеные пользователем функции
  public property _dllWay: string read _dllWay_ write _dllWay_;
  ///Путь к отладочному файлу
  private property _Debug_File: string read _Debug_File_ write _Debug_File_;
  ///Путь к утилите очистки хеша
  public property DSN: string read DSN__ write DSN__;
  ///Параметр, показывающий, является ли
  ///данный вызов первым в данной форме
  public property FRun: boolean read FRun_ write FRun_;
  ///Параетр, для отслеживания количества
  ///повторений при рекурсивных вызовах
  public property Live_Serv: byte read Live_Serv_ write Live_Serv_;
  ///Вектор, хранящий параметр, показывающий,
  ///следует ли выводить на экран функцию
  public property Enabled_Arr_Func_: array of boolean read Enabled_Arr_Func__ write Enabled_Arr_Func__;
  ///Рабочая папка для файлов конкретного
  ///экземпляра откомпилированной функции
  ///... DL_0\WF_0\
  public property Files_Working_Directory: string read Files_Working_Directory_ write Files_Working_Directory_;
  ///Цвет системы координат
  public property Coordinats_System_Color: System.Drawing.Color read Coordinats_System_Color_ write Coordinats_System_Color_;
  ///Цвет маркера завершения координат
  public property Coordinats_End_System_Color: System.Drawing.Color read Coordinats_End_System_Color_ write Coordinats_End_System_Color_;
  ///Массив значений пользовательских функций, при заданном параметре
  public property fn_my: array of real read fn_my_ write fn_my_;
  ///Тип окончания функций
  public property Dash_Of_Func_Line: System.Drawing.Drawing2D.LineCap read Dash_Of_Func_Line_ write Dash_Of_Func_Line_;
  ///Толщина линий функций
  public property Width_Func_Line: integer read Width_Func_Line_ write Width_Func_Line_;
  ///Толщина системы координат
  public property Width_Coordinates: integer read Width_Coordinates_ write Width_Coordinates_;
  ///Позиция отображения контекстного меню используется
  ///для того, чтобы при клике на элемент
  ///меню, открыть его снова в том - же месте
  public property Prev_Pos_Context_Menu: System.Drawing.Point read Prev_Pos_Context_Menu_ write Prev_Pos_Context_Menu_;
  ///Толщина большой линии
  public property Long_Line_Width: integer read Long_Line_Width_ write Long_Line_Width_;
  ///Толщина малой линии
  public property Short_Line_Width: integer read Short_Line_Width_ write Short_Line_Width_;
  public property Width_Of_XLine: integer read Width_Of_XLine_ write Width_Of_XLine_;
  public property Long_Line_Color: System.Drawing.Color read Long_Line_Color_ write Long_Line_Color_;
  public property Short_Line_Color: System.Drawing.Color read Short_Line_Color_ write Short_Line_Color_;
  public property XLine_Color: System.Drawing.Color read XLine_Color_ write XLine_Color_;
  public property Font_Color: System.Drawing.Color read Font_Color_ write Font_Color_;
  public property Clear_RectangleB: boolean read Clear_RectangleB_ write Clear_RectangleB_;
  public property High_Quality: boolean read High_Quality_ write High_Quality_;
  

    procedure timer1_Tick(sender: Object; e: EventArgs);
    procedure pictureBox1_MouseWheel(sender: Object; e: MouseEventArgs);
    procedure pictureBox1_MouseMove(sender: Object; e: MouseEventArgs);
    procedure pictureBox1_MouseLeave(sender: Object; e: EventArgs);
    procedure pictureBox1_MouseDown(sender: Object; e: MouseEventArgs);
    //procedure toolStripTextBox1_TextChanged(sender: Object; e: EventArgs);
    procedure contextMenuStrip1_Closed(sender: Object; e: ToolStripDropDownClosedEventArgs);
    procedure contextMenuStrip1_Opening(sender: Object; e: ComponentModel.CancelEventArgs);
    procedure pictureBox1_MouseEnter(sender: Object; e: EventArgs);
    procedure toolStripMenuItem18_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem19_Click(sender: Object; e: EventArgs);
    procedure button5_Click(sender: Object; e: EventArgs);
    procedure button6_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem20_Click(sender: Object; e: EventArgs);
    procedure button7_Click(sender: Object; e: EventArgs);
    procedure Form1_Deactivate(sender: Object; e: EventArgs);
    procedure toolStripMenuItem26_Click(sender: Object; e: EventArgs);
    procedure pictureBox1_MouseUp(sender: Object; e: MouseEventArgs);
    procedure toolStripMenuItem33_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem31_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem32_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem34_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem35_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem36_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem37_Click(sender: Object; e: EventArgs);
    procedure Form1_ImeModeChanged(sender: Object; e: EventArgs);
    procedure toolStripMenuItem14_Click(sender: Object; e: EventArgs);
    procedure button13_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem39_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit2.Form1.resources}
    fontDialog1: FontDialog;
    colorDialog1: ColorDialog;
    saveFileDialog1: SaveFileDialog;
    button1: Button;
    button2: Button;
    button3: Button;
    components: System.ComponentModel.IContainer;
    button4: Button;
    maskedTextBox1: MaskedTextBox;
    maskedTextBox2: MaskedTextBox;
    label1: &Label;
    label2: &Label;
    label3: &Label;
    label4: &Label;
    contextMenuStrip1: System.Windows.Forms.ContextMenuStrip;
    toolStripMenuItem2: ToolStripMenuItem;
    toolStripMenuItem3: ToolStripMenuItem;
    toolStripMenuItem4: ToolStripMenuItem;
    toolStripMenuItem5: ToolStripMenuItem;
    textBox1: TextBox;
    toolStripTextBox1: ToolStripTextBox;
    toolStripTextBox2: ToolStripTextBox;
    toolStripTextBox3: ToolStripTextBox;
    toolStripTextBox4: ToolStripTextBox;
    toolStripTextBox5: ToolStripTextBox;
    toolStripSeparator1: ToolStripSeparator;
    toolStripSeparator2: ToolStripSeparator;
    toolStripTextBox6: ToolStripTextBox;
    toolStripSeparator3: ToolStripSeparator;
    toolStripTextBox7: ToolStripTextBox;
    toolStripSeparator4: ToolStripSeparator;
    toolStripSeparator5: ToolStripSeparator;
    toolStripSeparator6: ToolStripSeparator;
    toolStripTextBox8: ToolStripTextBox;
    toolStripMenuItem6: ToolStripMenuItem;
    toolStripTextBox9: ToolStripTextBox;
    toolStripSeparator7: ToolStripSeparator;
    toolStripTextBox10: ToolStripTextBox;
    toolStripSeparator8: ToolStripSeparator;
    toolStripTextBox11: ToolStripTextBox;
    toolStripSeparator9: ToolStripSeparator;
    toolStripTextBox12: ToolStripTextBox;
    toolStripMenuItem7: ToolStripMenuItem;
    toolTip1: ToolTip;
    toolStripMenuItem8: ToolStripMenuItem;
    toolStripMenuItem10: ToolStripMenuItem;
    toolStripMenuItem13: ToolStripMenuItem;
    toolStripMenuItem14: ToolStripMenuItem;
    toolStripSeparator16: ToolStripSeparator;
    toolStripTextBox21: ToolStripTextBox;
    toolStripSeparator17: ToolStripSeparator;
    toolStripTextBox22: ToolStripTextBox;
    timer1: Timer;
    toolStripContainer1: ToolStripContainer;
    toolStripMenuItem26: ToolStripMenuItem;
    toolStripMenuItem16: ToolStripMenuItem;
    toolStripMenuItem17: ToolStripMenuItem;
    toolStripMenuItem18: ToolStripMenuItem;
    toolStripMenuItem19: ToolStripMenuItem;
    toolStripMenuItem20: ToolStripMenuItem;
    toolStripMenuItem21: ToolStripMenuItem;
    toolStripMenuItem22: ToolStripMenuItem;
    toolStripTextBox23: ToolStripTextBox;
    toolStripMenuItem23: ToolStripMenuItem;
    toolStripTextBox24: ToolStripTextBox;
    toolStripMenuItem15: ToolStripMenuItem;
    toolStripSeparator27: ToolStripSeparator;
    toolStripSeparator28: ToolStripSeparator;
    toolStripMenuItem11: ToolStripMenuItem;
    toolStripTextBox14: ToolStripTextBox;
    toolStripMenuItem12: ToolStripMenuItem;
    toolStripMenuItem25: ToolStripMenuItem;
    toolStripTextBox26: ToolStripTextBox;
    toolStripMenuItem1: ToolStripMenuItem;
    toolStripTextBox25: ToolStripTextBox;
    toolStripMenuItem9: ToolStripMenuItem;
    toolStripTextBox13: ToolStripTextBox;
    toolStripMenuItem27: ToolStripMenuItem;
    toolStripTextBox15: ToolStripTextBox;
    toolStripMenuItem28: ToolStripMenuItem;
    toolStripTextBox16: ToolStripTextBox;
    toolStripMenuItem29: ToolStripMenuItem;
    toolStripTextBox17: ToolStripTextBox;
    toolStripMenuItem30: ToolStripMenuItem;
    toolStripMenuItem31: ToolStripMenuItem;
    toolStripMenuItem32: ToolStripMenuItem;
    toolStripMenuItem33: ToolStripMenuItem;
    toolStripSeparator10: ToolStripSeparator;
    toolStripSeparator11: ToolStripSeparator;
    toolStripMenuItem34: ToolStripMenuItem;
    toolStripMenuItem35: ToolStripMenuItem;
    toolStripSeparator12: ToolStripSeparator;
    toolStripMenuItem36: ToolStripMenuItem;
    toolStripMenuItem37: ToolStripMenuItem;
    toolStripMenuItem38: ToolStripMenuItem;
    xToolStripMenuItem: ToolStripMenuItem;
    toolStripTextBox18: ToolStripTextBox;
    yToolStripMenuItem: ToolStripMenuItem;
    toolStripTextBox19: ToolStripTextBox;
    button9: Button;
    button5: Button;
    button8: Button;
    button6: Button;
    button13: Button;
    tableLayoutPanel1: TableLayoutPanel;
    button7: Button;
    button12: Button;
    tableLayoutPanel2: TableLayoutPanel;
    button10: Button;
    button11: Button;
    toolStripMenuItem39: ToolStripMenuItem;
    helpProvider1: HelpProvider;
    pictureBox1: PictureBox;
    {$include Unit2.Form1.inc}
  {$endregion FormDesigner}

  
  {function strtofloat(s:string):real;
    const fName='Debug.txt';
    var
      f_: PABCSystem.Text;
    begin
      //s:=Copy(s,0,s.length-1);
      //System.Console.Write(s);
      System.IO.File.WriteAllText(fName,s);
      Assign(f_,fName);
      Reset(f_);
      {result:= }{Readln(f_,result);//System.Convert.ToDouble(s);
      f_.close;
    end;}
public
  constructor(a,b :real; Way_To_Dll, Work__, DSN_: string);
    var
      val:integer;
      f:PABCSystem.Text;
      Counter: integer;
      str:string;
      
      bit:Bitmap;
      pen_:pen;
      Graph: System.Drawing.Graphics;
      Brush_: System.Drawing.Brush;
      Interf_: IWin32Window;

    begin
      self._dllWay:= Way_To_Dll;
      InitializeComponent;
      self.DSN:= DSN_;
      self.pictureBox1.MouseWheel += pictureBox1_MouseWheel;

      self.a:= a;
      self.b:= b;

      self.read_valies('RTB2.txt','RTB2.txt', System.Text.Encoding.UTF8);
      {var Fs_Way}self.Files_Working_Directory:= Work__;//System.Environment.CurrentDirectory;
      //Fs_Way:= Copy(self._dllWay,Fs_Way.Length + 2,self._dllWay.Length - Fs_Way.Length - 2);
      //Files_Working_Directory:= Copy(Fs_Way,1,pos('\',Fs_Way,1));
      //self.pictureBox1.BackColor:= System.Drawing.Color.Black;
      self.R_S;

    end;
  end;

//var
//function func_(x: real):real;

implementation

procedure Form1.read_valies(path1, path2: string; Encoding_: System.Text.Encoding);
var
  val:integer;
  f:PABCSystem.Text;
  Counter: integer;
  str:string;
  
  bit:Bitmap;
  pen_:pen;
  Graph: System.Drawing.Graphics;
  Brush_: System.Drawing.Brush;
  Interf_: IWin32Window;

begin

  TryStrToInt(maskedtextBox1.Text,val);
  self.AmountOfDots:= Val;
  self.Valuesx:=System.IO.File.ReadAllLines('RTB2.txt', System.Text.Encoding.UTF8);
  self.Valuesy:=System.IO.File.ReadAllLines('RTB1.txt',System.Text.Encoding.UTF8);
  self.maxx:=strtofloat(self.Valuesx[0]);
  self.minx:=self.maxx;

  for Counter:= 1 to self.Valuesx.Length-1 do
    if strtofloat(self.Valuesx[Counter])>self.maxx
      then
        self.maxx:=strtofloat(self.Valuesx[Counter])
      else
        if strtofloat(self.Valuesx[Counter])<self.minx
          then
            self.minx:=strtofloat(self.Valuesx[Counter]);

  self.maxy:=strtofloat(self.Valuesy[0]);
  self.miny:=self.maxy;
  for Counter:= 1 to self.Valuesy.Length-1 do
    if strtofloat(self.Valuesy[Counter])>self.maxy
      then
        self.maxy:=strtofloat(self.Valuesy[Counter])
      else
        if strtofloat(self.Valuesy[Counter])<self.miny
          then
            self.miny:=strtofloat(self.Valuesy[Counter]);

  self.maskedTextBox1.Text:= IntToStr(self.Valuesx.Length-1);
end;

//function func_(x: real):real; external 'func_My.dll' name 'func_';

{function Round(x: real): integer;
begin
  try
    Result := Convert.ToInt64(Math.Round(x));
  except
    result := 0;
  end;
end;}

function Form1.StrToFloat(s: string): real;
begin
  var HB: boolean:= TryStrToFloat(s, result);
  { := }//TryStrToFloat(s, result);
  if HB = false
    then
      self.read_valies('RTB2.txt','RTB2.txt', System.Text.Encoding.UTF8);
      {begin
        self.maxx:= 0;
        self.minx:= 0;
        self.maxy:= 0;
        self.miny:= 0;
      end;}
  //MessageBox.Show(HB.tostring);
end;

procedure Form1.R_S;
var
  Arr_S: array of string;
  f: PABCSystem.Text;
begin
  if not System.IO.File.Exists('Settings.txt')
    then
      Unit3.Form1.Create('Пропущен файл настроек. Продолжить без него(приведет к невозможности масштабирования)','Продолжить','Завершить' ,self.DSN).Show
    else
      begin
        Arr_S:= System.IO.File.ReadAllLines('Settings.txt');
        self.Long_Line:= StrToInt(Arr_S[0]);
        self.Short_Line:= StrToInt(Arr_S[1]);
        self.XLine:= StrToInt(Arr_S[2]);
        self.startx:= StrToInt(Arr_S[3]);
        self.starty:= StrToInt(Arr_S[4]);
        self.endx_:= StrToInt(Arr_S[5]);
        self.endy_:= StrToInt(Arr_S[6]);
        self.CorrectOutY:= StrToInt(Arr_S[7]);
        self.CorrectOutX:= StrToInt(Arr_S[8]);
        self.Pen_Line_End_Const:= StrToInt(Arr_S[9]);
        self.Zoom_Par:= StrToInt(Arr_S[10]);
      end;
end;

procedure Form1.Stepx(Pen_: System.Drawing.Pen; Point_:System.Drawing.PointF; var Graph: System.Drawing.Graphics; const_:integer);
var
  Point__: System.Drawing.PointF:= Point_;//Point_.GetType;
begin
  Point__.Y:=Point__.Y+const_;
  Graph.DrawLine(Pen_,Point_,Point__);
end;

procedure Form1.Stepy(Pen_: System.Drawing.Pen; Point_:System.Drawing.PointF; var Graph: System.Drawing.Graphics; const_:integer);
var
  Point__: System.Drawing.PointF:= Point_;//Point_.GetType;
begin
  Point__.x:=Point__.x-const_;
  Graph.DrawLine(Pen_,Point_,Point__);
end;

procedure Form1.DrawX_(Pen_: System.Drawing.Pen; point: System.Drawing.PointF; var Graph: System.Drawing.Graphics; const_:integer);
var
      //bit:Bitmap;
      //pen_:pen;
      //Graph: System.Drawing.Graphics;
      Brush_: System.Drawing.Brush;
      Interf_: IWin32Window;
begin
  try
    Graph.DrawLine(Pen_,Point.X-const_,point.Y-const_,Point.X+const_,point.Y+const_);
    Graph.DrawLine(Pen_,Point.X+const_,point.Y-const_,Point.X-const_,point.Y+const_);
  except
    self.read_valies('RTB2.txt','RTB2.txt', System.Text.Encoding.UTF8);
    //messagebox.show('Error: overflow');
    //Bit:= Bitmap.Create(pictureBox1.Width,pictureBox1.Height);
    //    pen_:= Pen.Create(colorDialog1.Color);
    Brush_:= System.Drawing.SolidBrush.Create(pen_.Color);
    //    Graph:= System.Drawing.Graphics.FromImage(Bit);
    Graph.DrawString('Error overflow',fontDialog1.Font,Brush_,100,100);
        {Graph:= }//Graph.DrawString('overflow',fontDialog1.Font,Brush_,100,100);{self.AmountOfDots.ToString{}{Valuesy[0],fontDialog1.Font,Brush_,100,100);}
    //    pictureBox1.Image:= Bit;
    //while true do
    //  ;
  end;
end;

function Form1.Normalize_Functions(IAr: array of System.Drawing.PointF): array of array of System.Drawing.PointF;
var
  Max_Out_ToMonitor: single:= 1000;
  ///Если предидущий был число, тогда true
  prev_el: boolean:= false;
  Val_Y_In_Native: single;
begin
  SetLength(Result, 0);
  foreach var x in IAr do
    begin
      Val_Y_In_Native:= (((x.Y-self.Rectangle.Height)*(-1)*self.PVal1PX_Y)+self.miny);
      if (single.IsInfinity(x.Y)) or (single.IsNegativeInfinity(x.Y)) or (single.IsNaN(x.Y)) or (x.Y > single.MaxValue) or (x.Y < single.MinValue) or (x.Y > Max_Out_ToMonitor) or (x.Y < ((-1)*Max_Out_ToMonitor)) or//(x.Y > self.pictureBox1.Size.Height+1) or (x.Y < {self.Rectangle.Y}-1) or
      (single.IsInfinity(Val_Y_In_Native)) or (single.IsNegativeInfinity(Val_Y_In_Native)) or (single.IsNaN(Val_Y_In_Native)) or (Val_Y_In_Native > single.MaxValue) or (Val_Y_In_Native < single.MinValue)// or (Val_Y_In_Native > self.pictureBox1.Size.Height+1) or (Val_Y_In_Native < {self.Rectangle.Y}-1)
        then
          prev_el:= false
        else
          begin
            if not prev_el
              then
                begin
                  SetLength(Result,Result.Length+1);
                  SetLength(Result[Result.Length-1],0);
                  prev_el:= true;
                end;
            SetLength(Result[Result.Length-1],Result[Result.Length-1].Length+1);
            Result[Result.Length-1][Result[Result.Length-1].Length-1]:= x;
          end;
    end;
end;


///
function Form1.Normalize_Functions_MM(IAr: array of System.Drawing.PointF; Funct_: integer): array of System.Drawing.PointF;
var
  ///Дельта Y
  DY: real;
begin
  if IAr.Length < 3
    then
      begin
        Result:= IAr;
        exit;
      end;
  Result:= new System.Drawing.PointF[0];
  ///Предыдущее значение X
  var PrevX:= IAr[0].X;
  var h:= IAr[1].X - IAr[0].X;
  var CX: real;
  var CY: real;
  var fn_my_: mass_my_for_func;
  var buff: real;
  foreach var x in IAr do
    begin
      DY:= PrevX - x.X;
      if DY <> 0
        then
          begin
            Unit3.Form1.Create(DY.ToString,'','',self.DSN).Show;
            //CX:= x.X;
            //CY:= x.Y;
            //В числ. знач.
            CX:= (x.X-self.Rectangle.X)*self.PVal1PX_X+self.minx;
            CY:= ((x.Y-self.Rectangle.Height)*(-1)*self.PVal1PX_Y)+self.miny;
            while true do
              begin
                CX:= CX + DY;
                //PrevX - x.X;
                //Уменьшение шага
                fn_my_:= (mass_my_for_func)(self.Current_Dll_Loaded.GetType('func_My.nc').GetMethod('func_').Invoke(self.ob_func, new object[1](CX)));
                buff:= (self.a*fn_my_[Funct_]+self.b)/self.PVal1PX_Y;
                CY:= ((-1)*(buff-self.maxy/self.PVal1PX_Y))+Rectangle_.Height-((-1)*((self.miny/self.PVal1PX_Y)-self.maxy/self.PVal1PX_Y))+Rectangle_.Y;
                if (CX >= ((x.X-self.Rectangle.X)*self.PVal1PX_X+self.minx)+((h-self.Rectangle.X)*self.PVal1PX_X+self.minx))
                  then
                    //Уменьшить шаг
                    break;
                SetLength(Result, Result.Length+1);
                Result[Result.Length-1]:= System.Drawing.PointF.Create(CX, CY);
                if single.IsInfinity(CX) or single.IsNegativeInfinity(CX) or single.IsNaN(CX)
                  or single.IsInfinity(CY) or single.IsNegativeInfinity(CY) or single.IsNaN(CY)
                    then
                      break;
              end;
          end;
      PrevX:= x.X;
      SetLength(Result, Result.Length+1);
      Result[Result.Length-1]:= x;
    end;
end;

procedure Form1.nt;
{
const
  ///Размер длинной линии системы координат (подписанной)
  Long_Line=9;
  ///Размер короткой линии системы координат (не подписанной)
  Short_Line=3;
  ///Размер маркера вводимых значений
  XLine=2;
  ///Отступ слева от PictureBox
  startx=0+Long_Line;
  ///Отступ снизу PictureBox
  starty=0+Long_Line;
  ///Расстояние в px, от конца облости отображения до отображения координатной сетки
  endx_=20;
  ///Расстояние в px, от конца облости отображения до отображения координатной сетки
  endy_=20;
  ///Расстояние от текста до координатной сетки
  CorrectOutY=10;
  ///Расстояние от текста до координатной сетки
  CorrectOutX=10;
  ///Размер треугольника завершения системы координат
  Pen_Line_End_Const=5;
}
{
const
  ///Размер длинной линии системы координат (подписанной)
  Long_Line=self.Long_Line;
  ///Размер короткой линии системы координат (не подписанной)
  Short_Line=self.Short_Line;
  ///Размер маркера вводимых значений
  XLine=self.XLine;
  ///Отступ слева от PictureBox
  startx=self.startx;
  ///Отступ снизу PictureBox
  starty=self.starty;
  ///Расстояние в px, от конца облости отображения до отображения координатной сетки
  endx_=self.endx_;
  ///Расстояние в px, от конца облости отображения до отображения координатной сетки
  endy_=self.endy_0;
  ///Расстояние от текста до координатной сетки
  CorrectOutY=self.CorrectOutY;
  ///Расстояние от текста до координатной сетки
  CorrectOutX=self.CorrectOutX;
  ///Размер треугольника завершения системы координат
  Pen_Line_End_Const=self.Pen_Line_End_Const;
}
var
{  ///Размер длинной линии системы координат (подписанной)
  Long_Line: integer:= 9;
  ///Размер короткой линии системы координат (не подписанной)
  Short_Line: integer:= 3;
  ///Размер маркера вводимых значений
  XLine: integer:= 2;
  ///Отступ слева от PictureBox
  startx: integer:= 0+Long_Line;
  ///Отступ снизу PictureBox
  starty: integer:= 0+Long_Line;
  ///Расстояние в px, от конца облости отображения до отображения координатной сетки
  endx_: integer:= 20;
  ///Расстояние в px, от конца облости отображения до отображения координатной сетки
  endy_: integer:= 20;
  ///Расстояние от текста до координатной сетки
  CorrectOutY: integer:= 10;
  ///Расстояние от текста до координатной сетки
  CorrectOutX: integer:= 10;
  ///Размер треугольника завершения системы координат
  Pen_Line_End_Const: integer:= 5;
}
  endx:integer:= endx_;
  endy:integer:= endy_;
  Bit: Bitmap;
  ///Рамка допустимой области отрисовки функции
  Rectangle_: System.Drawing.Rectangle;
  Graph: System.Drawing.Graphics;
  ///Стиль начертания значений
  pen_: System.Drawing.Pen;
  ///Стиль начертания значений больших линий
  Pen__: System.Drawing.Pen;
  ///Стиль начертания значений малых линий
  Pen___: System.Drawing.Pen;
  ///Стиль начертания значений введеных точек
  Pen____: System.Drawing.Pen;
  maxx,minx: real;
  maxy,miny: real;
  ///Начало системы координат
  point_: System.Drawing.PointF;
  point__: System.Drawing.PointF;
  point___: System.Drawing.PointF;
  point____: System.Drawing.PointF;
  XPoint: System.Drawing.PointF;
  ///Массив точек функции
  Points_: array of array of System.Drawing.PointF;
  ///Указывает точку тестового вывода
  testpoint: System.Drawing.PointF;
  ///Тип кисти
  Brush_: System.Drawing.Brush;
  ///Счетчик цикла вывода значений
  Counter: integer;
  ///Шаг отображения значений по x
  Delta_Pointx: integer;
  ///Шаг отображения значений по y
  Delta_Pointy:integer;
  ///Шаг значений по x
  Delta_Valuex:real:=(self.maxx-self.minx)/StrToInt(self.maskedTextBox1.Text);
  ///Шаг значений по y
  Delta_Valuey:real:=(self.maxy-self.miny)/StrToInt(self.maskedTextBox1.Text);
  Val: integer;
  Help_Val: integer;
  ///Стиль конца системы координат
  Pen_Line_End: Pen;
  ///Максимальная длина значений y
  maxlengthy: string;
  ///Максимальная длина значений x
  maxlengthx: string;
  ///Значение x, соответствующее 1му PX
  Val1PX_X: real;
  ///Значение y, соответствующее 1му PX
  Val1PX_Y: real;
  ///Переменная, показывающая отношение y к x
  Y1PXX: real;
  ///Переводится в true, если необходима перерисовка
  refresh_: boolean;
  B_Ch: real;
  Points_Max: real;
  debug: PABCSystem.Text;
  //fn: func_My.nc;
  fn: System.ModuleHandle;
  ///fn_my: mass_my_for_func;
  Max_Line:= Max(self.Long_Line, self.Short_Line);
  ///Вспомогательная рамка
  HRectangle_: System.Drawing.Rectangle;

begin
  //fn:= new nc;
  //fn:= self.Current_Dll_Loaded.ManifestModule.ModuleHandle;
  //MessageBox.Show(func_My);
  {var i:= -1;
  while true do
    try
      i:=i+1;
      //box:= new MessageBox;
      FPS:=i;
      MessageBox.Show(fn.ResolveMethodHandle(1).ToString);
    except;
    end;
  }
///exit;
  //Создание новой битовой карты


  try
    Bit:= Bitmap.Create(pictureBox1.Width,pictureBox1.Height);
  except
    exit;
  end;
  maxlengthy:=self.maxy.ToString;
  if maxlengthy.Length<self.miny.ToString.Length
    then
      maxlengthy:=self.miny.ToString;
  maxlengthx:=self.maxx.ToString;
  if maxlengthx.Length<self.minx.ToString.Length
    then
      maxlengthx:=self.minx.ToString;
  //Установка размеров области прорисовки
  ///Delta_Valuey.ToString.Length
  Rectangle_:= pictureBox1.ClientRectangle;

  ///Rectangle_.X:=startx+Delta_Valuey.ToString.Length*Width_;
  ///MessageBox.Show(maxlengthy+' '+maxlengthy.Length.ToString());

  //Костыль!!!
    maxlengthy:=maxlengthy.Replace(',','.');
    maxlengthx:=maxlengthx.Replace(',','.');
  //Конец костыля

  //!!!!\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
  //!!!!//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
  ///Ошибка при y[0]=0.12 y[1]=1. Опредеяет текст как 1, а нужно 4 символа
  //!!!!//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
  //!!!!\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//

  Rectangle_.X:=startx+System.Windows.Forms.TextRenderer.MeasureText((strtofloat(maxlengthy)+Delta_Valuey).ToString,self.fontDialog1.Font).Width+CorrectOutY+Max_Line;//maxlengthy;
  Rectangle_.Y:=Rectangle_.Y-1;
  //Rectangle_.Height += 1;
  //point_.Y:=Rectangle_.Height-1;
  Rectangle_.Height:=Rectangle_.Height-starty-System.Windows.Forms.TextRenderer.MeasureText((strtofloat(maxlengthx)+Delta_Valuex).ToString,self.fontDialog1.Font).Height-CorrectOutX-Max_Line;//-Width_;
  Rectangle_.Width:=Rectangle_.Width-startx-System.Windows.Forms.TextRenderer.MeasureText((strtofloat(maxlengthy)+Delta_Valuey).ToString,self.fontDialog1.Font).Width-CorrectOutY-Max_Line;

  if not self.RectangleB
    then
      begin
        Rectangle_.X += Trunc(self.Width_Coordinates/2);
        //Rectangle_.Y:=Rectangle_.Y-1;
        Rectangle_.Height -= Trunc(self.Width_Coordinates/2);
        Rectangle_.Width -= Trunc(self.Width_Coordinates/2);
      end
    else
      begin
        Rectangle_.X += Trunc(self.Width_Coordinates/2);
        Rectangle_.Width -= self.Width_Coordinates;
        Rectangle_.Y += Trunc(self.Width_Coordinates/2);
        Rectangle_.Height -= Trunc(self.Width_Coordinates)+Rectangle_.Y;
        Rectangle_.Height += 1;
      end;

  //Задание значений области перекраски(закраска лишнего от Rectangle_
  HRectangle_:= Rectangle_;
  HRectangle_.X += Trunc((self.Width_Coordinates+1)/2);
  HRectangle_.Y -= Trunc(self.Width_Coordinates/2);
  //MessageBox.Show(HRectangle_.X.ToString+'   '+HRectangle_.Y.ToString+'   '+HRectangle_.Width.ToString+'   '+HRectangle_.Height.ToString+'   '+self.pictureBox1.ClientRectangle.Width+'   '+self.pictureBox1.ClientRectangle.Height);

  //Rectangle_.Width:=Rectangle_.Width-startx-Delta_Valuey.ToString.Length*Width_;
  ///Rectangle_.Y:=Rectangle_.Y;

  pen_:= Pen.Create(self.Coordinats_System_Color);
  Brush_:= System.Drawing.SolidBrush.Create(self.Font_Color);
  Pen_.Width:= self.Width_Coordinates;//1;//fontDialog1.Font.Size;
  
  ///Стиль начертания значений больших линий
  Pen__:= Pen.Create(self.Long_Line_Color);
  Pen__.Width:= self.Long_Line_Width;
  ///Стиль начертания значений малых линий
  Pen___:= Pen.Create(self.Short_Line_Color);
  Pen___.Width:= self.Short_Line_Width_;
  ///Стиль начертания значений введеных точек
  Pen____:= Pen.Create(self.XLine_Color);
  Pen____.Width:= self.Width_Of_XLine;

  point_.X:=Rectangle_.X;
  point_.Y:=Rectangle_.Height-1;//self.pictureBox1.Height;
  ///pen_.
  point___:=point_;
  //Правка для вывода y на ширину строк
  point___.X:=point___.X-System.Windows.Forms.TextRenderer.MeasureText((strtofloat(maxlengthy)+Delta_Valuey).ToString,self.fontDialog1.Font).Width-CorrectOutY-Long_Line-Trunc(self.Width_Coordinates/2);
  //Правка для вывода y на высоту строк
  point___.Y:=point___.Y-trunc(System.Windows.Forms.TextRenderer.MeasureText('1',self.fontDialog1.Font).Height/2);

  //Fpen_:=System.Drawing.SystemPens.FromSystemColor(System.Drawing.SystemColors.MenuText);
  //Fpen_.Brush:= System.Drawing.SolidBrush.Create(Fpen_.Color);
  //Fpen_.CustomEndCap.BaseCap:= System.Drawing.Drawing2D.LineCap.Custom;
  //Fpen_.CustomEndCap.WidthScale:=3;

  //Создание объекта GDI+ (оверхность рисования)
  Graph:=System.Drawing.Graphics.FromImage(Bit);

  //System.Windows.Forms.TextBoxRenderer.DrawTextBox(Graph,Rectangle_,System.Windows.Forms.VisualStyles.TextBoxState.Normal);

  //Прорисовка координатной сетки
  if self.RectangleB
    then
      begin
        Rectangle_.Height -= 1;
        Rectangle_.Y += 1;
        Graph.DrawRectangle(pen_,Rectangle_);
        if Clear_RectangleB
          then
            begin
              //"Закраска" лишних частей рамки
              Graph.FillRectangle(System.Drawing.SolidBrush.Create(self.pictureBox1.BackColor),HRectangle_);
            end;
        Rectangle_.Height += 1;
        Rectangle_.Y -= 1;
      end
    else
      begin
        pen_.EndCap:= System.Drawing.Drawing2D.LineCap.Triangle;
        Graph.DrawLine(pen_,Rectangle_.X,Rectangle_.Height,Rectangle_.X,Rectangle_.Y);
        Graph.DrawLine(pen_,Rectangle_.X,Rectangle_.Height-1,Rectangle_.Width+Rectangle_.X,Rectangle_.Height-1);
      end;

  //Перенисение значений координатной сетки в параметр класса
  self.Rectangle:= Rectangle_;

  //Выбор режима вывода граффики
  Graph.SmoothingMode:=System.Drawing.Drawing2D.SmoothingMode.HighQuality;

  //Установка стиля завершения координатной сетки
  Pen_Line_End:=Pen.Create(Coordinats_End_System_Color);
  Pen_Line_End.EndCap:= System.Drawing.Drawing2D.LineCap.ArrowAnchor;
  Pen_Line_End.Width:= self.Pen_Line_End_Const;
  
  endx += self.Pen_Line_End_Const;
  endy += self.Pen_Line_End_Const;

  ///Pen_Line_End.CustomEndCap.StrokeJoin:= System.Drawing.Drawing2D.LineJoin.MiterClipped;

  ///Graph.DrawLine(Pen.Create.CustomEndCap.StrokeJoin
  ///Graph.DrawString(self.AmountOfDots.ToString{'Text'},fontDialog1.Font,Brush_,point_);

  point__:=point_;
  //XPoint:=point_;
  //point____:=point_;

  TryStrToInt(self.maskedtextBox1.Text,Val);
  TryStrToInt(self.maskedtextBox2.Text,Help_Val);
  //Help_Val:=Help_Val+1;

  Help_Val:= Val*Help_Val;

  //Вычисление расстояния от последнего значения до конца области прорисовки

  if endx < System.Windows.Forms.TextRenderer.MeasureText(self.maxx.ToString,self.fontDialog1.Font).Width
    then
      endx:=System.Windows.Forms.TextRenderer.MeasureText(self.maxx.ToString,self.fontDialog1.Font).Width;

  if endy < Trunc((System.Windows.Forms.TextRenderer.MeasureText(self.maxy.ToString,self.fontDialog1.Font).Height)/2)
    then
      endy:=Trunc((System.Windows.Forms.TextRenderer.MeasureText(self.maxy.ToString,self.fontDialog1.Font).Height)/2);

  //Задание параметра конца отображения
  self.End_Y_Par:= endy;

  //Инициализация массива координат функции

  if self.Current_Dll_Loaded <> nil
    then
      begin
        fn_my:= (mass_my_for_func)(self.Current_Dll_Loaded.GetType('func_My.nc').GetMethod('func_').Invoke(self.ob_func, new object[1](1)));
        SetLength(Points_, fn_my.Length);

        for var i:= 0 to fn_my.Length-1 do
          Points_[i]:= new System.Drawing.PointF[Help_Val+1];
      end
    else
      begin
        SetLength(Points_, 1);
        Points_[0]:= new System.Drawing.PointF[Help_Val+1];
      end;


  //Создание и настройка пера для функций
  {SetLength(Fpen_, Points_.Length);
  for var x:= 0 to Fpen_.Length-1 do
    begin
      Fpen_[x]:= pen_;
      Fpen_[x].Color:= System.Drawing.Color.FromArgb(PABCSystem.Random(256),PABCSystem.Random(256),PABCSystem.Random(256));
    end;}


  //Вычисление значения шага координатной сетки

  Delta_Pointx:= Trunc((Rectangle_.Width-pen_.Width-endx)/(Help_Val));
  Delta_Pointy:= Trunc((Rectangle_.Height-pen_.Width-endy)/(Help_Val));


  //Вычисление значения одного пикселя

  Val1PX_X:= (self.maxx-self.minx)/(Delta_Pointx*{(Rectangle_.Width-pen_.Width-endx)*}Help_Val); //(Rectangle_.Width-pen_.Width-endx);
  Val1PX_Y:= (self.maxy-self.miny)/(Delta_Pointy*{(Rectangle_.Height-pen_.Width-endy)*}Help_Val); //(Rectangle_.Height-pen_.Width-endy);
  Y1PXX:= Val1PX_X/Val1PX_Y;
  self.PVal1PX_X:= Val1PX_X;
  self.PVal1PX_Y:= Val1PX_Y;
  //Y1PXX:= Val1PX_Y/Val1PX_X;
  //MessageBox.Show(Val1PX_X.ToString+'  '+Val1PX_Y.ToString);


  //Отрисовка х значений функции

  //Assign(debug,'Debug.txt');
  //Rewrite(debug);
  for Counter:=0 to self.Valuesx.Length-1 do
    begin
      //MessageBox.Show((StrToFloat(self.Valuesx[Counter])/Val1PX_X).ToString);
      XPoint.X:= (StrToFloat(self.Valuesx[Counter])/Val1PX_X)-self.minx/Val1PX_X+Rectangle_.X;
      XPoint.Y:= ((-1)*((StrToFloat(self.Valuesy[Counter])/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Height-((-1)*((self.miny/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Y;
      self.DrawX_(Pen____,XPoint,Graph,XLine);
      //writeln(debug,XPoint.X,'  ',XPoint.Y,'  ',Rectangle_.Height,'  ',Rectangle_.Width);
      //Graph.DrawString(Counter.ToString,fontDialog1.Font,Brush_,XPoint);
    end;
    //MessageBox.Show((Counter+1).ToString);
  //Debug.Close;

  //Прорисовка линий завершения координатной сетки
  Graph.DrawLine(Pen_Line_End,Rectangle_.Width+point_.X-Pen_Line_End.Width,point_.Y,Rectangle_.Width+point_.X,point_.Y);
  Graph.DrawLine(Pen_Line_End,point_.X,Rectangle_.Y+Pen_Line_End.Width,point_.X,Rectangle_.Y);

  for Counter:= 0 to Help_Val do
    begin
      if (Counter Mod (Help_Val div Val))=0
        then
          begin
            //Прорисовка координатной сетки
            Stepx(Pen__,point_,Graph,Long_Line);
            Stepy(Pen__,point__,Graph,Long_Line);
            //Stepy(Pen_,point____,Graph,Long_Line);
            ///Graph.DrawString(Counter.ToString{'Text'},fontDialog1.Font,Brush_,point_);
            //Нанесение значений по x
            point_.Y:=Point_.Y+Long_Line+CorrectOutX+Trunc(self.Width_Coordinates/2);
            //point_.X:=Point_.X-Trunc((((Delta_Valuex*(Counter Div (Help_Val Div Val)))+self.minx)).ToString.Length*Width_)/2;
            point_.X:=Point_.X-Trunc(System.Windows.Forms.TextRenderer.MeasureText((Delta_Valuex*(Counter Div (Help_Val Div Val))+self.minx).ToString, self.fontDialog1.Font).Width/2);
            Graph.DrawString(floatToStr(((Delta_Valuex*(Counter Div (Help_Val Div Val)))+self.minx)){'Text'},fontDialog1.Font,Brush_,point_);
            //point_.X:=Point_.X+Trunc((((Delta_Valuex*(Counter Div (Help_Val Div Val)))+self.minx)).ToString.Length*Width_)/2;
            point_.X:=Point_.X+Trunc(System.Windows.Forms.TextRenderer.MeasureText((Delta_Valuex*(Counter Div (Help_Val Div Val))+self.minx).ToString, self.fontDialog1.Font).Width/2);
            point_.Y:=Point_.Y-Long_Line-CorrectOutX-Trunc(self.Width_Coordinates/2);

            ///Graph.DrawString(Delta_Valuey.ToString,fontDialog1.Font,Brush_,testpoint);
            ///testpoint.Y:= testpoint.Y+Delta_Pointy;

            ///Graph.DrawString((Counter Div (Help_Val Div Val)).ToString{'Text'},fontDialog1.Font,Brush_,testpoint);
            ///testpoint.Y:= testpoint.Y+Delta_Pointy;

            //Нанесение значений по y
            Graph.DrawString(floatToStr(((Delta_Valuey*(Counter Div (Help_Val Div Val)))+self.miny)){'Text'},fontDialog1.Font,Brush_,point___);//point__);

            ///testpoint.Y:= testpoint.Y+Delta_Pointy;

          end
        else
          begin
            //Прорисовка координатной сетки
            Stepx(Pen___,point_,Graph,Short_Line);
            Stepy(Pen___,point__,Graph,Short_Line);
            //Stepy(Pen_,point____,Graph,Short_Line);
          end;

//
      //self.a:=1;
      //self.b:=2;
      for var i:= 0 to Points_.Length-1 do
        Points_[i][Counter].X:= Delta_Pointx*Counter+Rectangle_.X{+self.minx};
      //Points_[Counter].X:= Round(StrToFloat(self.Valuesx[Counter])/Val1PX_X)-self.minx/Val1PX_X+Rectangle_.X;
      //Points_[Counter].Y:= {self.a}{*(Delta_Pointx+self.minx)+0;//self.b;}
      //Прибавление шага
      point___.Y:=point___.Y-Delta_Pointy;
      point__.Y:=point__.Y-Delta_Pointy;
      //point____.Y:=point____.Y-Delta_Pointy;
      point_.X:=point_.X+Delta_Pointx;
    end;

//Смотри debug...
  //Assign(debug,'debug_Funct.txt');
  //Reset(debug);
  //Rewrite(debug);
  //Append(debug);
  var buff: real;
  var fn_my_: mass_my_for_func;
  for Counter:= 0 to Points_[0].Length-1 do
    //Points_[Counter].Y:= (Y1PXX*((-1)*(self.a*sin(Points_[Counter].X-Rectangle_.X)+self.b/Val1PX_X))+Rectangle_.Height)+Rectangle_.Y;
    begin
      //Points_[Counter].X:= Points_[Counter].X - Rectangle_.X;
      //Points_[Counter].Y:= (self.a*sin((Y1PXX*(Points_[Counter].X-Rectangle_.X)*Val1PX_X)-(Rectangle_.Height+Rectangle_.Y)*Val1PX_Y)*(-1))/Val1PX_Y;
      //System.Reflection.Assembly.Load(Current_Dll_Loaded.FullName);
      if self.Current_Dll_Loaded <> nil
        then
          for var i:= 0 to fn_my.Length-1 do
            begin
              fn_my_:= (mass_my_for_func)(self.Current_Dll_Loaded.GetType('func_My.nc').GetMethod('func_').Invoke(self.ob_func, new object[1]((Points_[0][Counter].X-Rectangle_.X)*Val1PX_X+self.minx)));
              ///Points_[i][Counter].Y:= {Rectangle_.Height+Rectangle_.Y-}{-1*}(self.a*fn_my_[i]{ob_func.func_}{((Points_[Counter].X-Rectangle_.X)*Val1PX_X+self.minx)}+self.b)/Val1PX_Y{+Rectangle_.Height};{-self.miny*Val1PX_Y};//to points;
              buff:= {Rectangle_.Height+Rectangle_.Y-}{-1*}(self.a*fn_my_[i]{ob_func.func_}{((Points_[Counter].X-Rectangle_.X)*Val1PX_X+self.minx)}+self.b)/Val1PX_Y{+Rectangle_.Height};{-self.miny*Val1PX_Y};//to points;
          //self.Current_Dll_Loaded
          //MessageBox.Show(self.ob_func.GetType.FullName{.GetMethod('func_').ToString});
          //System.Reflection.Assembly.Load(Current_Dll_Loaded.FullName);
              ///Points_[i][Counter].Y:= ((-1)*(Points_[i][Counter].Y-self.maxy/Val1PX_Y))+Rectangle_.Height-((-1)*((self.miny/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Y;
              Points_[i][Counter].Y:= ((-1)*(buff-self.maxy/Val1PX_Y))+Rectangle_.Height-((-1)*((self.miny/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Y;
              {if (single.IsInfinity(Points_[i][Counter].Y)) or (single.IsNegativeInfinity(Points_[i][Counter].Y)) or (single.IsNaN(Points_[i][Counter].Y))
                then
                  begin
                    //Unit3.Form1.Create(Points_[i][Counter].Y.ToString,'Продолжить','Завершить',self.DSN).Show;
                    
                    Points_[i][Counter].Y:= -1-Trunc(self.Width_Func_Line/2);
               }     
                    {if Points_[i][Counter].Y = single.PositiveInfinity
                      then
                        Points_[i][Counter].Y:= single.MaxValue
                      else
                        if Points_[i][Counter].Y = single.NegativeInfinity
                          then
                            Points_[i][Counter].Y:= single.MinValue
                          else
                            Points_[i][Counter].Y:= 0.0;}
                    //Unit3.Form1.Create(Points_[i][Counter].Y.ToString,'Продолжить','Завершить',self.DSN).Show;
                  //end;
              if (single.IsInfinity(Points_[i][Counter].X)) or (single.IsNegativeInfinity(Points_[i][Counter].X)) or (single.IsNaN(Points_[i][Counter].X))
                then
                //Unit3.Form1.Create(Points_[i][Counter].Y.ToString,'Продолжить','Завершить',self.DSN).Show;
                  Points_[i][Counter].X:= -1-Trunc(self.Width_Func_Line/2);
            end;
      //(Y1PXX*((-1)*(((self.a/Val1PX_Y)*sin((Points_[Counter].X*Val1PX_X-Rectangle_.X*Val1PX_X)-self.minx)/Val1PX_X)+self.b/Val1PX_Y))+Rectangle_.Height)+Rectangle_.Y;
      //Points_[Counter].Y:= Points_[Counter].Y
      ///!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      //Writeln(debug,' xp= ',Points_[Counter].X,' yp= ',Points_[Counter].Y,' minyp=',((-1)*(self.miny/Val1PX_Y-self.maxy/Val1PX_Y))+Rectangle_.Height-((-1)*(Round(self.miny/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Y,' Height= ',self.Rectangle.Height,' x= ',(Points_[Counter].X-Rectangle_.X)*Val1PX_X{(Points_[Counter].X-Points_[0].X)*Val1PX_X},' sin(x)= ',Sin((Points_[Counter].X-Rectangle_.X)*Val1PX_X),' y= ',Points_[Counter].Y*Val1PX_Y,' minx= ',self.minx,' a= ',self.a,' b= ',self.b);
      {if Points_[Counter].Y > (Rectangle_.Height+Rectangle_.Y)
        then
          begin
            //MessageBox.Show('work');
            self.miny:=Points_[Counter].Y*Val1PX_Y;
            //B_Ch:=(Points_[Counter].Y-Rectangle_.Height)*Val1PX_Y;
            refresh_:=true;
          end;}
    end;
    {writeln(debug,'------------------------------------------------------');
    debug.Close;}

  {Points_Max:=Points_[0].Y;
  for Counter:=1 to Points_.Length do
    if Points_[Counter].Y>Points_Max
      then
        Points_Max:=Points_[Counter].Y;
}
  ///XPoint.Y:= ((-1)*(Round(StrToFloat(self.Valuesy[Counter])/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Height-((-1)*(Round(self.miny/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Y;
  ///Graph.DrawPolygon(Fpen_,Points_);
  
  //Вывод графиков
var MSG_Str: string:= 'Функция под номером ' + {i.ToString}'0' + ' не была отображена в связи с необработанной ошибкой. Отправьте файл: "Debug_funct_znach.txt" нам на почту и удалите его со своего компьютера, для того, чтобы мы исправили ошибку в будующем.';
for var j:= 0 to Points_.Length-1 do
  if Enabled_Arr_Func_[j] = true
    then
      begin
        var ov:= self.Normalize_Functions(Points_[j]);
        self.Live_Serv:= 0;
        for var i:= 0 to ov.Length-1 do
          if ov[i].Length >= 3
            then
              try
                //ov[i]:= self.Normalize_Functions_MM(ov[i],i);
                Graph.DrawCurve(Fpen_[j],ov[i]);
                      
                     { MSG_Str += #10+'*******************************************'+#10;
                      var IStr_Arr:= ov[i].Select(x -> x.ToString.ToCharArray.joinintostring).ToArray;
                      foreach var f in IStr_Arr do
                        MSG_Str += #10+f;
                      MSG_Str += #10+'*******************************************'+#10;
                      System.IO.File.AppendAllLines('Debug_funct_znach.txt', MSG_Str.Split(#10));}
              except
                //var MSG_Str: string:= 'Функция под номером ' + i.ToString + ' не была отображена в связи с необработанной ошибкой. Отправьте файл: "Debug_funct_znach.txt" нам на почту и удалите его со своего компьютера, для того, чтобы мы исправили ошибку в будующем.';
                if self.Live_Serv < 3
                  then
                    {begin
                      var ovh: array of System.Drawing.PointF;
                      var Graph1:=System.Drawing.Graphics.FromImage(System.Drawing.Bitmap.Create(Rectangle_.Width,Rectangle_.Height));
                      foreach var kl in ov[i] do
                        try
                          Graph1.DrawLine(Fpen_[j],kl.X,kl.Y,kl.X-2,kl.Y+2);
                        except
                          ovh:= self.Normalize_Functions_MM(ov[i], kl);
                          Graph.DrawCurve(Fpen_[j],ovh);
                          MSG_Str += #10+'*******************************************'+#10;
                          MSG_Str += kl.ToString;
                          MSG_Str += #10+'*******************************************'+#10;
                          self.Live_Serv += 1;
                        end;
                    end
                  else}
                    begin
                      self.Live_Serv:= 0;
                      //var MSG_Str: string:= 'Функция под номером ' + i.ToString + ' не была отображена в связи с необработанной ошибкой. Отправьте файл: "Debug_funct_znach.txt" нам на почту и удалите его со своего компьютера, для того, чтобы мы исправили ошибку в будующем.';
                      
                      {foreach var kl in ov[i] do
                        try
                          Graph.DrawLine(Fpen_[j],kl.X,kl.Y,kl.X-2,kl.Y+2);
                        except
                          ovh:= self.Normalize_Functions_MM(ov[i], kl);
                          Graph.DrawCurve(Fpen_[j],ovh);
                          MSG_Str += #10+'*******************************************'+#10;
                          MSG_Str += kl.ToString;
                          MSG_Str += #10+'*******************************************'+#10;
                        end;}
                      var OStr: array of string:= ov[i].Select(x -> x.ToString.ToCharArray.JoinIntoString).ToArray;
                      System.IO.File.AppendAllLines('Debug_funct_znach.txt',OStr);
                      var flag: integer;
                      //self.Files_Working_Directory;
                      //MessageBox.Show(self.Files_Working_Directory);
                      //MessageBox.Show(Copy(self.Files_Working_Directory.Reverse.JoinIntoString(''),1,Pos('\',self.Files_Working_Directory.Reverse.JoinIntoString(''),1)));
                      var HStr:= self.Files_Working_Directory;
                      HStr:= HStr.Reverse.JoinIntoString('');
                      Delete(HStr, 1, Pos('\',HStr,1));
                      var IStr_Arr:= System.IO.File.ReadAllLines(HStr.Reverse.JoinIntoString('') + '\func_My.pas');
                      MSG_Str += #10+'*******************************************'+#10;
                      foreach var f in IStr_Arr do
                        MSG_Str += #10+f;
                      MSG_Str += #10+'*******************************************'+#10;
                      IStr_Arr:= ov[i].Select(x -> x.ToString.ToCharArray.joinintostring).ToArray;
                      foreach var f in IStr_Arr do
                        MSG_Str += #10+f;
                      MSG_Str += #10+'*******************************************'+#10;
                      Unit3.Form1.Create(MSG_Str, 'Продолжить', 'Завершить', self.DSN).Show;
                      //System.IO.File.Move(HStr.Reverse.JoinIntoString('') + '\func_My.pas', self.Work_Directory + '\func_My.txt');
                      //self.Close;
                    end;
              end;
      end;
  {var i:= 0;
    if Points_ <> nil
      then
    for i:= 0 to Points_.Length-1 do
      if Points_[i] <> nil
        then
          if (Points_[i].Length > 3) and (Enabled_Arr_Func_[i] = true)
            then
              try
                {var OStr:= new string[Points_[i].Length];
                for var x:= 0 to Points_[i].Length-1 do
                  OStr[x]:= Points_[i][x].ToString;
                System.IO.File.AppendAllLines('Debug_funct_znach.txt',OStr);}
                //Graph.DrawCurve(Fpen_[i],Points_[i]);
              //except
        {var out_:= new string[Points_[i].Length];
        for var j:= 0 to Points_[i].Length-1 do
          begin
            out_[j]:= Points_[i][j].X.ToString;
            out_[j] += '  '+Points_[i][j].Y.ToString;
          end;
        System.IO.File.WriteAllLines('Debug errors of drawing.txt',out_);
        Unit3.Form1.Create('Произошла непредвиденная ошибка при построении граффика!','Продолжить','Завершить',self.DSN).Show;}
              //end;

  if self.SFPS
    then
      Graph.DrawString(self.FPS.ToString,fontDialog1.Font,Brush_,(Rectangle_.Width+Rectangle_.X-System.Windows.Forms.TextRenderer.MeasureText(self.FPS.ToString, self.fontDialog1.Font).Width),Rectangle_.Y);
//

  {Assign(debug,'Debug2.txt');
  Rewrite(debug);
  for Counter:= 0 to Points_.Length-1 do
    Writeln(debug,Points_[Counter].X.ToString,'   ',Points_[Counter].Y.ToString);
  debug.Close;
}
  //Импорт битмапа в ...
  pictureBox1.Image:= Bit;
  //Расчет параметра корректировки для кнопок
  Correct_For_Bottoms:= pictureBox1.Height-button1.Top;
  if self.SFPS
    then
      self.FPS += 1;
    {Bit:= Bitmap.Create(pictureBox1.Width,pictureBox1.Height);
    pen_:= Pen.Create(colorDialog1.Color);
    Brush_:= System.Drawing.SolidBrush.Create(pen_.Color);
    Graph:= System.Drawing.Graphics.FromImage(Bit);
    Graph.DrawString(Valuesy[0],fontDialog1.Font,Brush_,100,100);
    pictureBox1.Image:= Bit;}

  {if refresh_=true
    then
      begin
        self.b:= B_Ch;
        nt;
      end;}

end;

procedure Form1.Form1_Activated(sender: Object; e: EventArgs);
begin
  if not self.Hand_Active_
    then
      self.Form_Active_:= true;

  self.pictureBox1.Cursor:= System.Windows.Forms.Cursors.WaitCursor;
  System.Environment.CurrentDirectory:= self.Files_Working_Directory;
  //self.Current_Dll_Loaded:= System.Reflection.Assembly.LoadFrom('E:\Учеба\Проект_отрисовки_графиков\Основной_проект\np1\func_My.dll');
  {var a: string:= 'D:\Учеба\Проект_отрисовки_графиков\Основной_проект\np1\func_My.dll';
  self.Current_Dll_Loaded:= System.Reflection.Assembly.LoadFrom(a);//File(a);
  var t:System.Type;
  t:=self.Current_Dll_Loaded.GetType('func_My.Program');
  self.ob_func:= Activator.CreateInstance(t);
  var m:System.Reflection.MethodInfo:= t.GetMethod('func_');
  var tt:array of object;
  tt := new object[1];
  tt[0]:=(object)(1);
  var res: real:=System.Convert.ToDouble (m.Invoke(
  self.ob_func,
  tt)
  )
  ;
  MessageBox.Show(res.tostring);
  //MessageBox.Show(self.Current_Dll_Loaded.FullName);
  //self.Current_Dll_Loaded:= System.Reflection.Assembly.Load(self.Current_Dll_Loaded.FullName);}
  if System.IO.File.Exists(self._dllWay)
    then
      begin
        try
          self.Current_Dll_Loaded:= System.Reflection.Assembly.LoadFile(self._dllWay);
          self.ob_func:= System.Activator.CreateInstance(self.Current_Dll_Loaded.GetType('func_My.nc'));
          fn_my:= (mass_my_for_func)(self.Current_Dll_Loaded.GetType('func_My.nc').GetMethod('func_').Invoke(self.ob_func, new object[1](1)));
        except
          if self.Live_Serv < 3
            then
              begin
                self.Live_Serv += 1;
                Form1_Activated(sender,e);
              end
            else
              begin
                self.Live_Serv:= 0;
                Unit3.Form1.Create('Ошибка чтения сборки '+_dllWay+' Попробуйте откомпелировать функцию еще раз','Продолжить','Завершить',self.DSN).Show;
                self.Close;
              end;
        end;
        //var t1:= self.Current_Dll_Loaded.GetType('func_My.nc');

        //var m:= self.Current_Dll_Loaded.GetType('func_My.nc').GetMethod('func_');
        
        //Считывание параметра отображения
        if System.IO.File.Exists(WayEnabled_File)
          then
            Enabled_Arr_Func_:= System.IO.File.ReadAllLines(WayEnabled_File).Select(x -> x = '1 ').ToArray
          else
            Unit3.Form1.Create('Ошибка чтения файла' + WayEnabled_File + 'Попробуйте откомпелировать функцию еще раз','Продолжить','Завершить',self.DSN).Show;
        //Создание и настройка пера для функций
        if self.FRun
          then
            begin
              SetLength(self.Fpen_, fn_my.Length);
              var Color_Arr: array of System.Drawing.Color:= new System.Drawing.Color[fn_my.Length];
              for var x:= 0 to self.Fpen_.Length-1 do
                begin
                  Color_Arr[x]:= System.Drawing.Color.FromArgb(PABCSystem.Random(256),PABCSystem.Random(256),PABCSystem.Random(256));
                  self.Fpen_[x]:= System.Drawing.Pen.Create(Color_Arr[x],1);
                end;
              var writer_:= new string[Color_Arr.Length];
              for var i:= 0 to Color_Arr.Length-1 do
                writer_[i]:= Color_Arr[i].ToArgb.ToString;
              WriteAllLines(WayColors_File,writer_,System.Text.Encoding.UTF7);
              self.FRun:= false;
            end
          else
            begin
              var Color_Arr:= System.IO.File.ReadAllLines(WayColors_File,System.Text.Encoding.UTF7).Select(x -> StrToInt(x)).ToArray;
              for var x:= 0 to self.Fpen_.Length-1 do
                begin
                  self.Fpen_[x]:= System.Drawing.Pen.Create(System.Drawing.Color.FromArgb(Color_Arr[x]),1);
                end;
            end;
      end
    else
      begin
        //MessageBox.Show('Ошибка чтения файла '+_dllWay+' Попробуйте откомпелировать функцию еще раз');
        if self._dllWay = ''
          then
            Unit3.Form1.Create('Вы не ввели функцию или не откомпелировали ее. Для вывода результата, необходима компиляция! ','Продолжить','Завершить',self.DSN).Show
          else
            Unit3.Form1.Create('Ошибка чтения файла '+_dllWay+' Попробуйте откомпелировать функцию еще раз','Продолжить','Завершить',self.DSN).Show;
        self.Close;
      end;

  //var t:= self.Current_Dll_Loaded;//.GetTypes().ToList.ForEach(x -> 
  //foreach var tmp in t.GetTypes() do
  //  MessageBox.Show(tmp.tostring);
  //for var i:=0 to t.GetMethods.ToArray.Length-1 do
  //  MessageBox.Show(t.GetMethods.ToArray()[i].ToString);
  
  //self.ob_func
  //.Load.ManifestModule.GetMethod('nc').Invoke(self.ob_func, new object[](real));
  //for var i:= 0 to self.Current_Dll_Loaded.ExportedTypes.ToArray.Length-1 do
  //  MessageBox.Show(self.Current_Dll_Loaded.ExportedTypes.ToArray()[i].ToString);
  //MessageBox.Show(Current_Dll_Loaded.Location);
  //self.Current_Dll_Loaded
  //Current_Dll_Loaded
  //System.Reflection.Assembly.Load(a, System.Security.Policy.Evidence.Create());
  //MessageBox.Show(Current_Dll_Loaded.FullName);
  System.Environment.CurrentDirectory:= Work_Directory;
  self.Refrash_Lines;
  self.pictureBox1.Cursor:= System.Windows.Forms.Cursors.Cross;
end;

procedure Form1.Form1_Resize(sender: Object; e: EventArgs);
const CorrectForm=122;

begin

  self.SuspendLayout;

  //assign(f,'qwe.txt');
  //append(f);
  //writeln(f,pictureBox1.Width,'  ', self.Size.Width,'  ', label1.Top,'  ', self.Size.Height-122-Correct_For_Bottoms);
  //f.close;
  pictureBox1.Width:= self.Size.Width-45;
  pictureBox1.Height:= self.Size.Height-CorrectForm;

  self.label1.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms;
  self.label2.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms+22;
  self.label3.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms;
  self.label4.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms+22;
  self.button1.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms;
  self.button2.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms;
  self.button3.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms;
  self.button4.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms;
  self.maskedtextBox1.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms;
  self.maskedtextBox2.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms+22;
  self.tableLayoutPanel1.Top:= self.Size.Height-CorrectForm-self.Correct_For_Bottoms-66;
  self.tableLayoutPanel2.Top:= self.tableLayoutPanel1.Top - tableLayoutPanel2.Size.Height;

  self.nt;

  self.ResumeLayout;

end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  fontDialog1.ShowDialog();
  nt;
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= not self.tableLayoutPanel1.Visible;
  if not self.tableLayoutPanel1.Visible
    then
      self.tableLayoutPanel2.Visible:= false;
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  saveFileDialog1.DefaultExt:= '.bmp';
  saveFileDialog1.ShowDialog();
end;

procedure Form1.saveFileDialog1_FileOk(sender: Object; e: System.ComponentModel.CancelEventArgs);
begin
  pictureBox1.Image.Save(saveFileDialog1.FileName);
  //saveFileDialog1.
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
var
  val: integer:= self.AmountOfDots;
begin
  trystrtoint(maskedtextBox1.Text,val);
  self.AmountOfDots:= val;
  nt;
end;

procedure Form1.timer1_Tick(sender: Object; e: EventArgs);
begin
  self.FPS:=1;
  nt;
end;

procedure Form1.pictureBox1_MouseWheel(sender: Object; e: MouseEventArgs);
var
  del_: real:= self.Zoom_Par;
begin
  //MessageBox.Show(e.Delta.ToString);//self.pictureBox1.MouseWheel(;
  case Control.ModifierKeys of
      System.Windows.Forms.Keys.Shift:
        if e.Delta<0
          then
            begin
              self.miny*=del_;
              self.maxy*=del_;
            end
          else
            begin
              self.miny/=del_;
              self.maxy/=del_;
            end;
      System.Windows.Forms.Keys.Control:
        if e.Delta<0
          then
            begin
              self.minx*=del_;
              self.maxx*=del_;
            end
          else
            begin
              self.minx/=del_;
              self.maxx/=del_;
            end;
    else
      if e.Delta<0
        then
          begin
            self.minx*=del_;
            self.miny*=del_;
            self.maxx*=del_;
            self.maxy*=del_;
          end
        else
          begin
            self.minx/=del_;
            self.miny/=del_;
            self.maxx/=del_;
            self.maxy/=del_;
          end;
  end;
  self.label3.Text:= 'X='+((e.X-self.Rectangle.X)*self.PVal1PX_X+self.minx).ToString;
  self.label4.Text:= 'Y='+(((e.Y-self.Rectangle.Height)*(-1)*self.PVal1PX_Y)+self.miny).ToString;
  self.nt;
end;

procedure Form1.pictureBox1_MouseMove(sender: Object; e: MouseEventArgs);
var
  Pr_Args: System.Drawing.Point:= self.M_Ch_Args;
begin
  //self.toolTip1.Hide();
  //self.toolTip1.Active:=true;
  //self.toolTip1.Hide
  //MessageBox.Show(Sensitivity.ToString
  {if e.Delta<>0
    then
      MessageBox.Show(e.Delta.ToString);}

  //MessageBox.Show(e.Delta.ToString);

  //if System.Windows.Forms.Control.ModifierKeys = System.Windows.Forms.Keys
  //  then
  //    MessageBox.Show(System.Windows.Forms.Control.ModifierKeys.ToString);

  if self.Form_Active_
    then
      self.pictureBox1.Focus;

  if (e.X<>Pr_Args.X) or (e.Y<>Pr_Args.Y)
    then
      begin
        {XPoint.X:= Round(StrToFloat(self.Valuesx[Counter])/Val1PX_X)-self.minx/Val1PX_X+Rectangle_.X;
        XPoint.Y:= ((-1)*(e.Y)-self.maxy/Val1PX_Y))+Rectangle_.Height-((-1)*(Round(self.miny/Val1PX_Y)-self.maxy/Val1PX_Y))+Rectangle_.Y;
        self.DrawX_(pen_,XPoint,Graph,XLine);}
        //self.toolTip1.Show('X '+((e.X-self.Rectangle.X)*self.PVal1PX_X+self.minx).ToString+'    Y '+(((e.Y-self.Rectangle.Height)*(-1)*self.PVal1PX_Y)+self.miny).ToString, self.pictureBox1);{System.Windows.Forms.Control}
        //self.toolTip1.Active:= true;
        //MessageBox.Show(e.X.ToString+' '+e.Y.ToString+' '+Pr_Args.X.ToString+' '+Pr_Args.Y.ToString);

        self.label3.Text:= 'X='+((e.X-self.Rectangle.X)*self.PVal1PX_X+self.minx).ToString;
        self.label4.Text:= 'Y='+(((e.Y-self.Rectangle.Height)*(-1)*self.PVal1PX_Y)+self.miny).ToString;

        //MessageBox.Show(e.Button.ToString);
        if System.Windows.Forms.Control.ModifierKeys = System.Windows.Forms.Keys.Control
          then
            begin
              if e.Button = System.Windows.Forms.MouseButtons.Left
                then
                  if e.Location.Y < Pr_Args.Y
                    then
                      begin
                        self.miny:= (self.miny/self.PVal1PX_Y-(e.Location.Y-self.Rectangle.Y)/self.Sence_Y)*self.PVal1PX_Y;
                        self.maxy:= (self.maxy/self.PVal1PX_Y-(e.Location.Y-self.Rectangle.Y)/self.Sence_Y)*self.PVal1PX_Y;
                        self.nt;
                      end
                    else
                      begin
                        self.miny:= ((e.Location.Y-self.Rectangle.Y)/self.Sence_Y+self.miny/self.PVal1PX_Y)*self.PVal1PX_Y;
                        self.maxy:= ((e.Location.Y-self.Rectangle.Y)/self.Sence_Y+self.maxy/self.PVal1PX_Y)*self.PVal1PX_Y;
                        self.nt;
                      end;
            end
          else
        if e.Button = System.Windows.Forms.MouseButtons.Left
          then
            begin
              if e.Location.X < Pr_Args.X
                then
                  begin
                    self.minx:= ((e.Location.X-self.Rectangle.X)/self.Sence_X+self.minx/self.PVal1PX_X)*self.PVal1PX_X;
                    self.maxx:= ((e.Location.X-self.Rectangle.X)/self.Sence_X+self.maxx/self.PVal1PX_X)*self.PVal1PX_X;
                    self.nt;
                  end
                else
                  begin
                    self.minx:= (self.minx/self.PVal1PX_X-(e.Location.X-self.Rectangle.X)/self.Sence_X)*self.PVal1PX_X;
                    self.maxx:= (self.maxx/self.PVal1PX_X-(e.Location.X-self.Rectangle.X)/self.Sence_X)*self.PVal1PX_X;
                    self.nt;
                    
                    {self.minx;
                    self.maxx;}
                    //MessageBox.Show(((e.Location.X-self.Rectangle.X)-self.minx/self.PVal1PX_X).ToString);
                  end;
            end;

        Pr_Args.X:= e.X;
        Pr_Args.Y:= e.Y;
        self.M_Ch_Args:= Pr_Args;
      end;
end;

procedure Form1.pictureBox1_MouseLeave(sender: Object; e: EventArgs);
begin
  //self.toolTip1.Active:= false;
  self.label3.Text:='X= - ';
  self.label4.Text:='Y= - ';
  self.Hand_Active_:= false;
end;

procedure Form1.pictureBox1_MouseDown(sender: Object; e: MouseEventArgs);
var
  Pos_: System.Drawing.Point;
begin
  if e.Button = System.Windows.Forms.MouseButtons.Right
    then
      begin
        Pos_:= e.Location;
        Pos_.X+= self.DesktopLocation.X;
        Pos_.Y+= self.DesktopLocation.Y;
        self.Prev_Pos_Context_Menu:= Pos_;
        self.contextMenuStrip1.Show(Pos_);
      end
    else
      if e.Button = System.Windows.Forms.MouseButtons.Left
        then
          self.pictureBox1.Cursor:= System.Windows.Forms.Cursors.Hand;
end;

procedure Form1.Refrash_Lines;
begin
  for var x:= 0 to self.Fpen_.Length-1 do
    begin
      self.Fpen_[x].Width:= self.Width_Func_Line;
      self.Fpen_[x].StartCap:= Dash_Of_Func_Line;
      self.Fpen_[x].EndCap:= Dash_Of_Func_Line;
    end;
  self.nt;
end;

function Form1.H_T_Swap_r(a: string): real;
begin
  a:= a.Replace(',','.');
  TryStrToFloat(a,result);
end;

function Form1.H_T_Swap_i(a: string): integer;
begin
  a:= a.Replace(',','.');
  TryStrToInt(a,result);
end;

procedure Form1.contextMenuStrip1_Closed(sender: Object; e: ToolStripDropDownClosedEventArgs);
begin

  self.minx:= H_T_Swap_r(self.toolStripTextBox1.Text);

  self.miny:= H_T_Swap_r(self.toolStripTextBox2.Text);

  self.maxx:= H_T_Swap_r(self.toolStripTextBox3.Text);

  self.maxy:= H_T_Swap_r(self.toolStripTextBox4.Text);

  self.Sence_X:= H_T_Swap_r(self.toolStripTextBox10.Text);

  self.Sence_Y:= H_T_Swap_r(self.toolStripTextBox12.Text);

  self.Long_Line:= H_T_Swap_i(self.toolStripTextBox25.Text);

  self.Short_Line:= H_T_Swap_i(self.toolStripTextBox26.Text);

  self.XLine:= H_T_Swap_i(self.toolStripTextBox13.Text);

  self.Pen_Line_End_Const:= H_T_Swap_i(self.toolStripTextBox14.Text);

  self.Zoom_Par:= H_T_Swap_r(self.toolStripTextBox22.Text);

  self.Width_Func_Line:= H_T_Swap_i(self.toolStripTextBox23.Text);

  self.Width_Coordinates:= H_T_Swap_i(self.toolStripTextBox24.Text);

  self.Long_Line_Width:= H_T_Swap_i(self.toolStripTextBox15.Text);

  self.Short_Line_Width:= H_T_Swap_i(self.toolStripTextBox16.Text);

  self.Width_Of_XLine:= H_T_Swap_i(self.toolStripTextBox17.Text);

  self.pictureBox1.Cursor.HotSpot.X:= H_T_Swap_i(self.toolStripTextBox18.Text);

  self.pictureBox1.Cursor.HotSpot.Y:= H_T_Swap_i(self.toolStripTextBox19.Text);

  Refrash_Lines;

end;

procedure Form1.contextMenuStrip1_Opening(sender: Object; e: ComponentModel.CancelEventArgs);
begin

  self.toolStripTextBox1.Text:= self.minx.ToString;
  self.toolStripTextBox2.Text:= self.miny.ToString;
  self.toolStripTextBox3.Text:= self.maxx.ToString;
  self.toolStripTextBox4.Text:= self.maxy.ToString;
  self.toolStripTextBox10.Text:= self.Sence_X.ToString;
  self.toolStripTextBox12.Text:= self.Sence_Y.ToString;
  self.toolStripTextBox25.Text:= self.Long_Line.ToString;
  self.toolStripTextBox26.Text:= self.Short_Line.ToString;
  self.toolStripTextBox13.Text:= self.XLine.ToString;
  self.toolStripTextBox14.Text:= self.Pen_Line_End_Const.ToString;
  self.toolStripTextBox22.Text:= self.Zoom_Par.ToString;
  self.toolStripTextBox23.Text:= self.Width_Func_Line.ToString;
  self.toolStripTextBox24.Text:= self.Width_Coordinates.ToString;
  self.toolStripTextBox15.Text:= self.Long_Line_Width.ToString;
  self.toolStripTextBox16.Text:= self.Short_Line_Width.ToString;
  self.toolStripTextBox17.Text:= self.Width_Of_XLine.ToString;
  self.toolStripTextBox18.Text:= self.pictureBox1.Cursor.HotSpot.X.ToString;
  self.toolStripTextBox19.Text:= self.pictureBox1.Cursor.HotSpot.Y.ToString;

  self.nt;

end;

procedure Form1.pictureBox1_MouseEnter(sender: Object; e: EventArgs);
begin
  {if not self.Form_Active_
    then
      begin
        self.Hand_Active_:= true;
        self.Form1_Activated(sender, e);
      end;}
end;

procedure Form1.toolStripMenuItem15_Click(sender: Object; e: EventArgs);
begin
  self.Cursor:= System.Windows.Forms.Cursors.WaitCursor;
  self.pictureBox1.Cursor:= System.Windows.Forms.Cursors.WaitCursor;
  Unit4.Form1.Create(self.Handle,self._dllWay, self.Files_Working_Directory, self.DSN).Show;
end;

procedure Form1.toolStripMenuItem18_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= false;
  self.tableLayoutPanel2.Visible:= false;
  self.colorDialog1.Color:= self.pictureBox1.BackColor;
  self.colorDialog1.ShowDialog;
  self.pictureBox1.BackColor:= self.colorDialog1.Color;
  self.nt;
end;

procedure Form1.toolStripMenuItem19_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= false;
  self.tableLayoutPanel2.Visible:= false;
  self.colorDialog1.Color:= self.Coordinats_System_Color;
  self.colorDialog1.ShowDialog;
  self.Coordinats_System_Color:= self.colorDialog1.Color;
  self.nt;
end;

procedure Form1.toolStripMenuItem20_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= false;
  self.tableLayoutPanel2.Visible:= false;
  self.colorDialog1.Color:= self.Coordinats_End_System_Color;
  self.colorDialog1.ShowDialog;
  self.Coordinats_End_System_Color:= self.colorDialog1.Color;
  self.nt;
end;

procedure Form1.button5_Click(sender: Object; e: EventArgs);
begin
  self.toolStripMenuItem19_Click(sender, e);
end;

procedure Form1.button6_Click(sender: Object; e: EventArgs);
begin
  self.toolStripMenuItem18_Click(sender, e);
end;

procedure Form1.button7_Click(sender: Object; e: EventArgs);
begin
  self.toolStripMenuItem20_Click(sender, e);
end;

procedure Form1.Form1_Deactivate(sender: Object; e: EventArgs);
begin
  self.Form_Active_:= false;
end;

procedure Form1.Abord_Closing_toolStripMenuItem(sender: Object; e: System.Windows.Forms.ToolStripDropDownClosingEventArgs);
begin
  MessageBox.Show(e.CloseReason.ToString);
  if e.CloseReason = System.Windows.Forms.ToolStripDropDownCloseReason.ItemClicked
    then
      e.Cancel:= true;
end;

//Не пашет
procedure Form1.toolStripMenuItem26_Click(sender: Object; e: EventArgs);
begin
  {self.toolStripMenuItem2.Select;
  self.toolStripMenuItem26.Select;
  self.toolStripMenuItem2.GetCurrentParent.Show;
  self.toolStripMenuItem26.GetCurrentParent.Show;}
  self.FPS:= 1;
  self.SFPS:= self.toolStripMenuItem26.Checked;
  self.timer1.Enabled:= self.SFPS;
  //self.toolStripMenuItem26.DropDown.Focus;
  //self.toolStripMenuItem26.DropDown.AutoClose:= false;
  self.toolStripMenuItem26.DropDown.Closing += Abord_Closing_toolStripMenuItem;
  self.nt;
  //self.Abord_Closing_toolStripMenuItem(sender, new System.Windows.Forms.ToolStripDropDownClosingEventArgs(System.Windows.Forms.ToolStripDropDownCloseReason.ItemClicked));
  //new System.Windows.Forms.ToolStripDropDownClosingEventHandler
end;

procedure Form1.pictureBox1_MouseUp(sender: Object; e: MouseEventArgs);
begin
  if e.Button = System.Windows.Forms.MouseButtons.Left
    then
      self.pictureBox1.Cursor:= System.Windows.Forms.Cursors.Cross;
end;

procedure Form1.toolStripMenuItem33_Click(sender: Object; e: EventArgs);
begin
  self.toolStripMenuItem15_Click(sender, e);
end;

procedure Form1.toolStripMenuItem31_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= false;
  self.tableLayoutPanel2.Visible:= false;
  self.colorDialog1.Color:= self.Long_Line_Color;
  self.colorDialog1.ShowDialog;
  self.Long_Line_Color:= self.colorDialog1.Color;
  self.nt;
end;

procedure Form1.toolStripMenuItem32_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= false;
  self.tableLayoutPanel2.Visible:= false;
  self.colorDialog1.Color:= self.Short_Line_Color;
  self.colorDialog1.ShowDialog;
  self.Short_Line_Color:= self.colorDialog1.Color;
  self.nt;
end;

procedure Form1.toolStripMenuItem34_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= false;
  self.tableLayoutPanel2.Visible:= false;
  self.colorDialog1.Color:= self.XLine_Color;
  self.colorDialog1.ShowDialog;
  self.XLine_Color:= self.colorDialog1.Color;
  self.nt;
end;

procedure Form1.toolStripMenuItem35_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel1.Visible:= false;
  self.tableLayoutPanel2.Visible:= false;
  self.colorDialog1.Color:= self.Font_Color;
  self.colorDialog1.ShowDialog;
  self.Font_Color:= self.colorDialog1.Color;
  self.nt;
end;

procedure Form1.toolStripMenuItem36_Click(sender: Object; e: EventArgs);
begin
  self.toolStripMenuItem37.Enabled:= self.toolStripMenuItem36.Checked;
  self.toolStripMenuItem2.Select;
  self.toolStripMenuItem36.Select;
  self.toolStripMenuItem2.GetCurrentParent.Show;
  self.toolStripMenuItem36.GetCurrentParent.Show;
  self.RectangleB:= self.toolStripMenuItem36.Checked;
  //self.toolStripMenuItem36.DropDown.Focus;
  //self.toolStripMenuItem36.DropDown.AutoClose:= false;
  self.toolStripMenuItem36.DropDown.Closing += Abord_Closing_toolStripMenuItem;
  self.nt;
  //self.Abord_Closing_toolStripMenuItem(sender, new System.Windows.Forms.ToolStripDropDownClosingEventArgs(System.Windows.Forms.ToolStripDropDownCloseReason.ItemClicked));
  //new System.Windows.Forms.ToolStripDropDownClosingEventHandler
end;

procedure Form1.toolStripMenuItem37_Click(sender: Object; e: EventArgs);
begin
  self.toolStripMenuItem2.Select;
  self.toolStripMenuItem37.Select;
  self.toolStripMenuItem2.GetCurrentParent.Show;
  self.toolStripMenuItem37.GetCurrentParent.Show;
  self.Clear_RectangleB:= self.toolStripMenuItem37.Checked;
  //self.toolStripMenuItem36.DropDown.Focus;
  //self.toolStripMenuItem36.DropDown.AutoClose:= false;
  self.toolStripMenuItem37.DropDown.Closing += Abord_Closing_toolStripMenuItem;
  self.nt;
end;

procedure Form1.Form1_ImeModeChanged(sender: Object; e: EventArgs);
begin
  if not self.Form_Active_
    then
      begin
        self.Hand_Active_:= true;
        self.Form1_Activated(sender, e);
        self.Cursor:= System.Windows.Forms.Cursors.Default;
        self.pictureBox1.Cursor:= System.Windows.Forms.Cursors.Default;
      end;
end;

procedure Form1.toolStripMenuItem14_Click(sender: Object; e: EventArgs);
begin
  //self.toolStripMenuItem14.DropDown.Closing += new System.Windows.Forms.ToolStripDropDownClosedEventHandler(Abord_Closing_toolStripMenuItem);
  //toolStripMenuItem14.Checked:= not toolStripMenuItem14.Checked;
  //278
  self.toolStripMenuItem2.Select;
  self.toolStripMenuItem7.Select;
  self.toolStripMenuItem8.Select;
  self.toolStripMenuItem14.Select;
  self.toolStripMenuItem2.GetCurrentParent.Show;
  self.toolStripMenuItem7.GetCurrentParent.Show;
  self.toolStripMenuItem8.GetCurrentParent.Show;
  self.toolStripMenuItem14.GetCurrentParent.Show;
end;

procedure Form1.button13_Click(sender: Object; e: EventArgs);
begin
  self.tableLayoutPanel2.Visible:= not self.tableLayoutPanel2.Visible;
end;

procedure Form1.toolStripMenuItem39_Click(sender: Object; e: EventArgs);
begin
  self.toolStripMenuItem2.Select;
  self.toolStripMenuItem39.Select;
  self.toolStripMenuItem2.GetCurrentParent.Show;
  self.toolStripMenuItem39.GetCurrentParent.Show;
  self.High_Quality:= self.toolStripMenuItem39.Checked;
end;

end.