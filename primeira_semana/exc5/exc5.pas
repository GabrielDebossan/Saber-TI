unit exc5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    edtTexto: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure RadioButton1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  primeiraLetra, restodotexto : String;
begin
  // Tudo Maiúsculo
  if RadioButton1.Checked then
    edtTexto.Text := UpperCase(edtTexto.Text);

  // Tudo Minusculo
  if RadioButton2.Checked then
    edtTexto.Text := LowerCase(edtTexto.Text);

  // Somente Primeira letra maiúscula.
  if RadioButton3.Checked then
  begin
    primeiraLetra := Copy(edtTexto.Text, 1, 1);
    restodotexto := Copy(edtTexto.Text, 2, Length(edtTexto.Text));
    edtTexto.Text := UpperCase(primeiraLetra) + restodotexto;
  end;

  // Somente primeira letra minúscula.
  if RadioButton4.Checked then
  begin
    primeiraLetra := Copy(edtTexto.Text, 1, 1);
    restodotexto := Copy(edtTexto.Text, 2, Length(edtTexto.Text));
    edtTexto.Text := LowerCase(primeiraLetra) + restodotexto;
  end;
end;

end.

