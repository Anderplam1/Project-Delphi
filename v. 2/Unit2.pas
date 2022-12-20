unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Buttons, StdCtrls, jpeg, ExtCtrls, DB, ADODB, Menus;

type
  TForm2 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    StringGrid1: TStringGrid;
    Image6: TImage;
    Image3: TImage;
    PopupMenu1: TPopupMenu;
    ADOQuery1: TADOQuery;
    ADOCommand1: TADOCommand;
    ADOConnection1: TADOConnection;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    PlayStation1: TMenuItem;
    Xbox1: TMenuItem;
    Nintendo1: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    D1: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    SIM1: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    Apple1: TMenuItem;
    Samsung1: TMenuItem;
    Android1: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    Apple2: TMenuItem;
    Xiaomi1: TMenuItem;
    Samsung2: TMenuItem;
    Huawei1: TMenuItem;
    Honor1: TMenuItem;
    Oppo1: TMenuItem;
    Philips1: TMenuItem;
    Sony1: TMenuItem;
    Nokia1: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    Flash1: TMenuItem;
    DVD1: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    OneBlade1: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Edit1Change(Sender: TObject);
var
        i : integer;
begin
ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('SELECT * FROM Product WHERE [products] like ''%'+Edit1.Text+'%''');
        ADOQuery1.Open;

        if ADOQuery1.RecordCount > 0 then
  	        begin
    	        StringGrid1.RowCount := ADOQuery1.RecordCount + 1;

                i := 0;
                while not ADOQuery1.Eof do
      	                begin
        	                inc(i);

        	                StringGrid1.Cells[0,i] := ADOQuery1.FieldByName('produkt_id').AsString;
        	                StringGrid1.Cells[1,i] := ADOQuery1.FieldByName('Image').AsString;
        	                StringGrid1.Cells[2,i] := ADOQuery1.FieldByName('products').AsString;
        	                StringGrid1.Cells[3,i] := ADOQuery1.FieldByName('Description').AsString;
        	                StringGrid1.Cells[4,i] := ADOQuery1.FieldByName('name_type').AsString;
        	                ADOQuery1.Next;
                        end;
        end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
        i : integer;
begin
        StringGrid1.Cells[0, 0] := 'Номер товара';
        StringGrid1.Cells[1, 0] := 'Изображение товара';
        StringGrid1.Cells[2, 0] := 'Наименование товара';
        StringGrid1.Cells[3, 0] := 'Описание товара';
        StringGrid1.Cells[4, 0] := 'Цена товара';

ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('SELECT * FROM Product WHERE [products] like ''%'+Edit1.Text+'%''');
        ADOQuery1.Open;

        if ADOQuery1.RecordCount > 0 then
  	        begin
    	        StringGrid1.RowCount := ADOQuery1.RecordCount + 1;

                i := 0;
                while not ADOQuery1.Eof do
      	                begin
        	                inc(i);

        	                StringGrid1.Cells[0,i] := ADOQuery1.FieldByName('produkt_id').AsString;
        	                StringGrid1.Cells[1,i] := ADOQuery1.FieldByName('Image').AsString;
        	                StringGrid1.Cells[2,i] := ADOQuery1.FieldByName('products').AsString;
        	                StringGrid1.Cells[3,i] := ADOQuery1.FieldByName('Description').AsString;
        	                StringGrid1.Cells[4,i] := ADOQuery1.FieldByName('name_type').AsString;
        	                ADOQuery1.Next;
                        end;
  	end;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  Edit1.Text := '';
end;

procedure TForm2.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        Image2.Picture.LoadFromFile('img\house2.jpg');
end;


procedure TForm2.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TForm2.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        Image3.Picture.LoadFromFile('img\Katalog2.jpg');
end;

procedure TForm2.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        Image4.Picture.LoadFromFile('img\korzina2.jpg');
end;

procedure TForm2.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        Image5.Picture.LoadFromFile('img\profile2.jpg');
end;

procedure TForm2.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        Image2.Picture.LoadFromFile('img\house.jpg');
        Image3.Picture.LoadFromFile('img\Katalog1.jpg');
        Image4.Picture.LoadFromFile('img\korzina1.jpg');
        image5.Picture.LoadFromFile('img\profile.jpg');
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
var
	i : integer;
begin
	ADOQuery1.Close;
        ADOQuery1.SQL.Clear;
        ADOQuery1.SQL.Add('SELECT * FROM Product WHERE [products] like ''%'+Edit1.Text+'%''');
        ADOQuery1.Open;

        if ADOQuery1.RecordCount > 0 then
  	        begin
    	        StringGrid1.RowCount := ADOQuery1.RecordCount + 1;

                i := 0;
                while not ADOQuery1.Eof do
      	                begin
        	                inc(i);

        	                StringGrid1.Cells[0,i] := ADOQuery1.FieldByName('produkt_id').AsString;
        	                StringGrid1.Cells[1,i] := ADOQuery1.FieldByName('Image').AsString;
        	                StringGrid1.Cells[2,i] := ADOQuery1.FieldByName('products').AsString;
        	                StringGrid1.Cells[3,i] := ADOQuery1.FieldByName('Description').AsString;
        	                StringGrid1.Cells[4,i] := ADOQuery1.FieldByName('name_type').AsString;
        	                ADOQuery1.Next;
                        end;
  	end;
end;

end.
