unit GCD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function GCD(count : integer; intArray : Array of integer) : integer;
    function CanDivide(topNumber: integer; bottomNumber: integer) : Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  num1, num2 : integer;
begin
  num2 := StrToInt(edit1.Text);
  num1 := StrToInt(edit2.Text);

  if CanDivide(num1,num2) then
    ShowMessage('Can Divide')
  else
    ShowMessage('Can not Divide');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  myArray : array of integer;
begin
  SetLength(myArray,5);
  myArray := [40,60,80,20,100];
  ShowMessage(intToStr(GCD(5,myArray)));
end;

function TForm1.CanDivide(topNumber, bottomNumber: integer): Boolean;
var
  remainder : integer;
begin
  result := false;
  remainder := topNumber mod bottomNumber;
  if remainder = 0 then
    result := true;
end;

function TForm1.GCD(count: integer; intArray: array of integer): integer;
var
  i, j : integer;
  PreserveResult : integer;
begin
  result := -1;

  if Length(intArray) <> count then
    Exit;

  for i := 0 to Length(intArray) - 1 do
  begin
    for j := 0 to Length(intArray) - 1 do
    begin
      if CanDivide(intArray[j],intArray[i]) then
        result := intArray[i]
      else
      begin
        result := -1;
        break;
      end;
    end;

    if result <> -1 then
      PreserveResult := Result;
  end;

  if PreserveResult <> -1 then
    Result := PreserveResult;

end;

end.
