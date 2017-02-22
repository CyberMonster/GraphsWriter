uses Unit1;

const
  Directory_Start_Name = 'DL_';
var
  Form_:Unit1.Form1;

begin

  System.Windows.Forms.Application.EnableVisualStyles();
  System.Windows.Forms.Application.SetCompatibleTextRenderingDefault(false);
  Form_:=Form1.Create(Directory_Start_Name);
  System.Windows.Forms.Application.Run(Form_);
  System.Diagnostics.Process.Start('Delete_Utilite.exe', Directory_Start_Name);

end.