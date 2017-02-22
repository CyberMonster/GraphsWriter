uses PABCSystem;
var
  IStr: string;
  All_Else_Text:array of string;
  Hmass:array of string;
function CompileExecutable(sourceName: string):boolean;
    var
    // ���� ������� �� ��������������
     sourceFile :System.IO.FileInfo;
     
     
    provider: system.codedom.compiler.CodeDomProvider;
    
 
    // ������� ���������� ���������� ����� �������, ���� �� ������ ��� ����������
    compileOk: boolean:= false;
    cp: system.codedom.compiler.CompilerParameters;
    cr: system.codedom.compiler.CompilerResults;
 begin
     //������� ��� �������� ������������ �����
     //exeName: String:= String.Format(@"{0}\{1}.exe",
     //System.Environment.CurrentDirectory, sourceFile.Name.Replace(".", "_"));
     sourceFile:= new System.IO.FileInfo(sourceName);
     Writeln(System.CodeDom.Compiler.CodeDomProvider.IsDefinedLanguage('CSharp'));
     provider:= system.codedom.compiler.CodeDomProvider.CreateProvider('CSharp');
     //System.CodeDom.Compiler.CodeDomProvider.CreateProvider(

     //������� ���������� cp, ����� ������ ��������� �����������
     
     Cp:= new system.codedom.compiler.CompilerParameters();
 
     //�� ������ �������������� ��� dll ��� � exe ���. �� ����� ������������� exe ����, ������� ���������� ����������� true
     cp.GenerateExecutable := false;
 
     //��������� �������� �����
     cp.OutputAssembly := 'func_My.dll';
 
     //Save the exe as a physical file
     cp.GenerateInMemory := false;
 
     //Set the compliere to not treat warranings as erros
     cp.TreatWarningsAsErrors := false;
 
     //Make it compile
     cr := provider.CompileAssemblyFromFile(cp, sourceName);
     //if there are more then 0 erros...
     if (cr.Errors.Count > 0)
     then
     begin
     //A message box shows the erros that occured
     writeln('Errors building {0} into {1}' +
     sourceName + cr.PathToAssembly);
     
     //for each error that occured in the code make a separete message box
     foreach Ce: system.codedom.compiler.CompilerError in cr.Errors do
     writeln('"� {0}"' + ce.ToString());
     end
     
     //���� ��� ������, ������� ���������
     else
     //������� ��������� �� �������� ����������
     begin
     writeln('Source {0} built into {1} successfully.' +
     sourceName +' -> '+ cr.PathToAssembly);
     end;
     //�������� ���� �� ������ ��� ����������
     if (cr.Errors.Count > 0)
     then
     compileOk:= false
     else
     //if there are no erros...����
     compileOk := true;
     
     //�������� �� �������� ���������� ����������
     result:= compileOk;
  end;
begin
  Writeln('������� �������, ��������� �� ���������� x');
  Readln(IStr);
  IStr:='          '+IStr;
  All_Else_Text:= System.IO.File.ReadAllLines('All_Else_Strings(dll compile)1(�#).txt');
  Hmass:= new string[All_Else_Text.Length+1];
  for var i:integer:=6 to All_Else_Text.Length-1 do
    Hmass[i+1]:=All_Else_Text[i];
  SetLength(All_Else_Text,All_Else_Text.Length+1);
  All_Else_Text[6]:= Istr;
  for var i:integer:= 7 to All_Else_Text.Length-1 do
    All_Else_Text[i]:= Hmass[i];
  System.IO.File.WriteAllLines('func_My.pas',All_Else_Text);
  writeln('_________________');
  All_Else_Text.Println(#10);
  CompileExecutable('func_My.pas');
end.