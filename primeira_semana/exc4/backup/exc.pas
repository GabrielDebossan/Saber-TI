unit exc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1PictureChanged(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Configura o formulário para capturar eventos de teclado
  KeyPreview := True;
  OnKeyDown := @FormKeyDown;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

procedure TForm1.Image1PictureChanged(Sender: TObject);
begin

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
const
  MoveStep = 10;

begin
  case Key of
    VK_LEFT:
      Image1.Left := Image1.Left - MoveStep;  // Move para a esquerda
    VK_RIGHT:
      Image1.Left := Image1.Left + MoveStep;  // Move para a direita
    VK_UP:
      Image1.Top := Image1.Top - MoveStep;    // Move para cima
    VK_DOWN:
      Image1.Top := Image1.Top + MoveStep;    // Move para baixo
  end;
end;

end.

