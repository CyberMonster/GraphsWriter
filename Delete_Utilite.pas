uses graphABC;
begin
  graphABC.MainForm.Opacity:=0;
  graphABC.MainForm.ShowInTaskbar:= false;
  var _Directories: array of string:= System.IO.Directory.GetDirectories(System.IO.Directory.GetCurrentDirectory);
  _Directories:= _Directories.Where(x -> Pos((Copy(System.Environment.CommandLine,Pos(' ',System.Environment.CommandLine)+1,System.Environment.CommandLine.Length-Pos(' ',System.Environment.CommandLine)+1)), x) <> 0).ToArray;
  foreach var x in _Directories do
    System.IO.Directory.Delete(x,true);
  graphABC.CloseWindow;
end.