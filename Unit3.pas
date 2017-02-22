unit Unit3;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit3.Form1.resources}
    button1: Button;
    button2: Button;
    richTextBox1: RichTextBox;
    {$include Unit3.Form1.inc}
  {$endregion FormDesigner}
  private 
    DSN__: string;
    public property DSN: string read DSN__ write DSN__;
  public 
    constructor(message_, yes_bottom, no_bottom, DSN_: string);
    begin
      InitializeComponent;
      self.DSN := DSN_;
      self.richTextBox1.Text := message_;
      self.button1.Text := no_bottom;
      self.button2.Text := yes_bottom;
    end;
  end;

implementation

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  System.Diagnostics.Process.Start('Delete_Utilite.exe', self.DSN);
  Halt;
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  self.Close;
end;

end.