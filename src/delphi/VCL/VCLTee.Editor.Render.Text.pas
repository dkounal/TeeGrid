{*********************************************}
{  TeeGrid Software Library                   }
{  VCL TTextRender Editor                     }
{  Copyright (c) 2016 by Steema Software      }
{  All Rights Reserved                        }
{*********************************************}
unit VCLTee.Editor.Render.Text;

interface

uses
  {Winapi.}Windows, {Winapi.}Messages, {System.}SysUtils, {System.}Classes, {Vcl.}Graphics,
  {Vcl.}Controls, {Vcl.}Forms, {Vcl.}Dialogs, {Vcl.}ComCtrls, {Vcl.}StdCtrls, {Vcl.}ExtCtrls,

  VCLTee.Editor.Format.Text, VCLTee.Editor.Borders, VCLTee.Editor.Margins,
  Tee.Renders;

type
  TTextRenderEditor = class(TForm)
    PageSelected: TPageControl;
    TabFormat: TTabSheet;
    TabBorders: TTabSheet;
    TabMargins: TTabSheet;
    TabAlign: TTabSheet;
    RGVerticalAlign: TRadioGroup;
    RGHorizAlign: TRadioGroup;
    procedure PageSelectedChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RGHorizAlignClick(Sender: TObject);
    procedure RGVerticalAlignClick(Sender: TObject);
  private
    { Private declarations }

    IText : TTextRender;

    IBorders : TBordersEditor;
    IFormat : TTextFormatEditor;
    IMargins : TMarginsEditor;
  public
    { Public declarations }

    procedure RefreshTextRender(const ATextRender:TTextRender);

    class function Edit(const AOwner:TComponent; const ATextRender:TTextRender):Boolean; static;

    class function Embedd(const AOwner:TComponent; const AParent:TWinControl;
                          const ATextRender:TTextRender):TTextRenderEditor; static;
  end;

implementation