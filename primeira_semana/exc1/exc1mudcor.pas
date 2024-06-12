unit exc1MudCor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ColorBox;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ColorBox1: TColorBox;
    procedure Button1Click(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     Form1.Color:=ColorBox1.Selected;
end;

procedure TForm1.ColorBox1Change(Sender: TObject);
begin

end;

end.

