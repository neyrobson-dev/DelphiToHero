unit DelphiToHero.View.Pages.Form.Template;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces, Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TFormTemplate = class(TForm, iRouter4DComponent)
    pnlPrincipal: TPanel;
    pnlToolbar: TPanel;
    pnlContainer: TPanel;
    pnlBotoes: TPanel;
    lblTitulo: TLabel;
    SpeedButton1: TSpeedButton;
    ilImages: TImageList;
    btnHistorico: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyStyle;
  public
    { Public declarations }
    function Render: TForm;
    procedure UnRender;
  end;

var
  FormTemplate: TFormTemplate;

implementation

uses
  DelphiToHero.View.Styles.Colors;

{$R *.dfm}

{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  pnlPrincipal.Color := COLOR_BACKGROUND;
  pnlContainer.Color := COLOR_BACKGROUND;
  pnlToolbar.Color := COLOR_C1;
  pnlBotoes.Color := COLOR_C1;
  lblTitulo.Font.Size := FONT_H5;
  lblTitulo.Font.Color := FONT_COLOR3;
  lblTitulo.Font.Name := FONT_FAMILY;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.UnRender;
begin
  //
end;

end.
