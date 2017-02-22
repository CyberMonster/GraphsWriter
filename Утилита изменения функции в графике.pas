var
  IStr: string;
  All_Else_Text:array of string;
  Hmass:array of string;
  CD,CD1:string;
begin
  Writeln('Введите функцию, зависящую от переменной x');
  Readln(IStr);
  IStr:='result:='+IStr+';';
  All_Else_Text:= System.IO.File.ReadAllLines('All_Else_Strings(dll compile).txt');
  Hmass:= new string[All_Else_Text.Length+1];
  for var i:integer:=3 to All_Else_Text.Length-1 do
    Hmass[i+1]:=All_Else_Text[i];
  SetLength(All_Else_Text,All_Else_Text.Length+1);
  All_Else_Text[3]:= Istr;
  for var i:integer:= 4 to All_Else_Text.Length-1 do
    All_Else_Text[i]:= Hmass[i];
  WriteLines('func_My.pas',All_Else_Text);
  CD:=GetCurrentDir;
  CD1:=GetCurrentDir;
  //System.Console.ReadKey;
  try
    CD:=CD+'\'+'PABCNETC'+'\'+'pabcnetc.exe';
    Execute(CD,CD1+'\'+'func_My.pas');
  except
    Writeln('Компонент:',CD,' не найден');
    raise new System.Exception('Обратитесь к разработчику ПО');
  end;
end.