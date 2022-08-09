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
  Router4D.Interfaces,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  Bind4D, Data.DB, Vcl.Grids, Vcl.DBGrids;

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
    Panel1: TPanel;
    pnlAcoes1: TPanel;
    pnlLine: TPanel;
    Panel2: TPanel;
    btnNovo: TSpeedButton;
    btnAtualizar: TSpeedButton;
    pnlPesquisar: TPanel;
    lblPesquisar: TLabel;
    edtPesquisar: TEdit;
    pnlLinePesquisar: TPanel;
    pnlGridContainer: TPanel;
    dbgrdPesquisar: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTitle: string;
    FEndPoint: string;
    FPK: string;
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
  lblTitulo.Caption := FTitle;
  pnlPrincipal.Color := COLOR_BACKGROUND;
  pnlContainer.Color := COLOR_BACKGROUND;
  pnlToolbar.Color := COLOR_C1;
  pnlBotoes.Color := COLOR_C1;
  Panel1.Color := COLOR_BACKGROUND;
  Panel2.Color := COLOR_BACKGROUND;
  pnlAcoes1.Color := COLOR_BACKGROUND;
  pnlPesquisar.Color := COLOR_BACKGROUND;
  pnlLine.Color := COLOR_C2;

  lblTitulo.Font.Size := FONT_H5;
  lblTitulo.Font.Color := FONT_COLOR3;
  lblTitulo.Font.Name := FONT_FAMILY;

  pnlLinePesquisar.Color := COLOR_BACKGROUND_TOP;

  lblPesquisar.Font.Size := FONT_H6;
  lblPesquisar.Font.Color := FONT_COLOR3;

  edtPesquisar.Font.Size := FONT_H6;
  edtPesquisar.Font.Color := FONT_COLOR3;
  edtPesquisar.Color := COLOR_BACKGROUND;

  dbgrdPesquisar.Font.Size := FONT_H5;
  dbgrdPesquisar.Font.Color := FONT_COLOR4;
  dbgrdPesquisar.Font.Name := FONT_FAMILY;
  dbgrdPesquisar.TitleFont.Size := FONT_H5;
  dbgrdPesquisar.TitleFont.Color := FONT_COLOR4;
  dbgrdPesquisar.TitleFont.Name := FONT_FAMILY;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  TBindFormJson.New.BindClassToForm(Self, FEndPoint, FPK, FTitle);
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
