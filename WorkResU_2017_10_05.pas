unit WorkResU;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Util, Buttons, ExtCtrls, DB,
     PrintReport, ADODB, ShellAPI;

type

  TWorkResF = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    bbClearRes: TBitBtn;
    BitBtn3: TBitBtn;
    bbSetRes: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    dtStart: TDateTimePicker;
    dtEnd: TDateTimePicker;
    Label8: TLabel;
    ComboBox2: TComboBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    lbAssemb: TLabel;
    Label4: TLabel;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    Label5: TLabel;
    lbDtpolis: TLabel;
    Label6: TLabel;
    lbNnpolis: TLabel;
    Label7: TLabel;
    dtdostav: TLabel;
    BitBtn5: TBitBtn;
    Label9: TLabel;
    lbFransh: TLabel;
    Label10: TLabel;
    lbPhone: TLabel;
    Label11: TLabel;
    lbnnStrah: TLabel;
    Label12: TLabel;
    lbAYKABU: TLabel;
    Label13: TLabel;
    lbBezn1: TLabel;
    Label14: TLabel;
    lbNumOrder: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure dtStartCloseUp(Sender: TObject);
    procedure dtEndCloseUp(Sender: TObject);
    procedure ComboBox2CloseUp(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bbClearResClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bbSetResClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private

  public

    id_doctor,TypeRes,TypeZakaz,IDRES,Flag,NumZakaz:Integer;
    Phone,Filt,card_doctor:String;
    id_strah:Integer;
    name_strah:String;
    nn_polis:String;
    NumOrder:String;
    dt_polis:TDateTime;
    fransh:Currency;
    IsPayMaster:Boolean;
    IsKurDostMakeOut:Boolean;
    IDRes_Kur:Integer;
    FIO:String;

    procedure FilterRes;
    procedure FilterResPos;
    procedure FlashStatus;

  end;

var WorkResF:TWorkResF;

implementation

uses MainU, DataModuleU, EnterValueU, AddResU, CancelResU;

{$R *.dfm}

procedure TWorkResF.FormCreate(Sender: TObject);
 begin
  Flag:=0;
  Caption:=MFC;
  ComboBox2.ItemIndex:=StrToInt(FormatDateTime('mm',Date()))-1;
  ComboBox2Change(ComboBox2);
  dtEnd.Date:=Date;
  IsPayMaster:=False;
  IsKurDostMakeOut:=False;
 end;

procedure TWorkResF.FilterRes;
var ID:Integer;
    Res:String;
 begin
  try
   ID:=-1;
   if DM.qrRes.Active then ID:=DM.qrRes.FieldByName('idres').AsInteger;
   DM.qrRes.Close;
   DM.qrRes.SQL.Clear;

   DM.qrRes.SQL.Add('select iddoc,numzakaz,idres,date_res,fio,phone,                                             ');
   DM.qrRes.SQL.Add('       (select top 1 users from SprUser s where s.id=r.id_user) as usero,    ');
   DM.qrRes.SQL.Add('       date_close,                                                           ');
   DM.qrRes.SQL.Add('       (case when id_close=0 then ''����� �������������'' when r.id_close>0 then (select top 1 users from SprUser ss where ss.id=r.id_close) else '''' end) as userc, ');
   DM.qrRes.SQL.Add('       closed,priznak,numzakaz,                                          ');

   DM.qrRes.SQL.Add('       case when (Priznak=1 and NumZakaz>0 and id_apteka_from is null) or (TypeZakaz=4) then ''� ''+r.Prefix ');
   DM.qrRes.SQL.Add('            when Priznak=1 and IsNull(NumZakaz,0)=0 then ''�� ������'' ');
   DM.qrRes.SQL.Add('            when Priznak=2 then ''� ������'' ');
   DM.qrRes.SQL.Add('            when Priznak=3 then ''����� �� ������'' ');
   DM.qrRes.SQL.Add('            when Priznak=1 and id_apteka_from is not null then ''� ������ ������'' ');
   DM.qrRes.SQL.Add('            when Priznak=4 then ''i������'' ');
   DM.qrRes.SQL.Add('            when Priznak=6 then ''���������'' ');
   DM.qrRes.SQL.Add('       end as TypeBr, ');

   DM.qrRes.SQL.Add('       case when Priznak=1 and iddoc>0 and iddoc=NumZakaz then 1 when Priznak=1 and iddoc>0 and IsNull(NumZakaz,0)=0 then 2 end as TypeBrI, ');

   DM.qrRes.SQL.Add('       case when PaySystemId=1 then ''����������'' when Priznak=1 and TypeZakaz=3 and id_apteka_from is null then ''������'' else ''���������''                 ');
   DM.qrRes.SQL.Add('       end as TypeZakaz, ');

   DM.qrRes.SQL.Add('       case when Priznak=1 and TypeZakaz=3 then 1 else 0 end as TypeZakazI, ');
   DM.qrRes.SQL.Add('       case when Date_Assembly is null then 0 else 1 end as IsAssembly, ');

   DM.qrRes.SQL.Add('       Date_Assembly, ');
   DM.qrRes.SQL.Add('       (select top 1 s1.users from SprUser s1 where s1.id_gamma=r.id_user_assembly) as fio_assembly, ');
   DM.qrRes.SQL.Add('       r.id_doctor, ');
   DM.qrRes.SQL.Add('       (select top 1 d.shtr from CallCenter_Doctors d where d.id=r.id_doctor) as card_doctor, ');

   DM.qrRes.SQL.Add('       r.TypeZakaz as TypeZakazR, ');

   DM.qrRes.SQL.Add('       IsNull(r.id_apteka_from,0) as id_apteka_from, ');
   DM.qrRes.SQL.Add('       dt_polis, ');
   DM.qrRes.SQL.Add('       nn_polis, ');
   DM.qrRes.SQL.Add('       dt_dostav, ');
   DM.qrRes.SQL.Add('       fransh, ');
   DM.qrRes.SQL.Add('       id_strah, ');
   DM.qrRes.SQL.Add('       id_blob, ');
   DM.qrRes.SQL.Add('       (select top 1 b.fname from dhres_blob b (nolock) where b.id=r.id_blob) as fnameblob, ');
   DM.qrRes.SQL.Add('       case when dt_load_nakl is null then 0 else 1 end CanSale, ');
   DM.qrRes.SQL.Add('       (select top 1 Descr from Strahovaya st (nolock) where st.id=r.id_strah) as StrahDescr,');
   DM.qrRes.SQL.Add('       YAKABU, ');
   DM.qrRes.SQL.Add('       NumOrder, ');
   DM.qrRes.SQL.Add('       PaySystemId, ');
   DM.qrRes.SQL.Add('       Status_Pay, ');
   DM.qrRes.SQL.Add('       (select Sum(kol*cena) from DtRes dtr (nolock) where dtr.idres=r.idres)-fransh as Bezn1, ');
   DM.qrRes.SQL.Add('       PrefixID ');
   DM.qrRes.SQL.Add('from DhRes r ');

   DM.qrRes.SQL.Add('where 1=1 ');

   if ComboBox1.ItemIndex<>1 then
    begin
     DM.qrRes.SQL.Add('       and r.date_res>='''+FormatDateTime('yyyy-mm-dd',dtStart.Date)+' 00:00:00'' and  ');
     DM.qrRes.SQL.Add('      r.date_res<='''+FormatDateTime('yyyy-mm-dd',dtEnd.Date)+' 23:59:59 '' ');
    end;
   if Filt<>'' then
    DM.qrRes.SQL.Add('and r.'+Filt );

{
   if TypeZakaz=2 then
    begin
     DM.qrRes.SQL.Add(' and r.Priznak=1 ');
     if Filt<>'' then
      DM.qrRes.SQL.Add('and r.'+Filt );
    end;
}

   if ComboBox1.ItemIndex>0 then
    DM.qrRes.SQL.Add(' and r.Closed='+IntToStr(ComboBox1.ItemIndex-1)  );
   DM.qrRes.SQL.Add('order by date_res ');

   DM.qrRes.Open;
   DM.qrRes.Locate('idres',ID,[]);
   FilterResPos;
   FlashStatus;

   if (Filt<>'') and (DM.qrRes.RecordCount>1) then
    MainF.MessBox('������� ��������� �������. �������� ����� ��� ������ ������ � ����������!',
                   48,GetFont('MS Sans Serif',12,clBlue,[fsBold]),0,Res);

  except
   on E:Exception do MainF.MessBox('������ ������� � ����������� �����: '+E.Message);
  end;
 end;

procedure TWorkResF.FilterResPos;
 begin
  DM.qrResPos.Close;
  if DM.qrRes.IsEmpty then Exit;
  try

   lbAssemb.Caption:='';
   Label4.Visible:=False;

   if DM.qrRes.FieldByName('IsAssembly').AsInteger=1 then
    begin
     Label4.Visible:=True;
     lbAssemb.Caption:=DM.qrRes.FieldByName('Date_Assembly').AsString+' ����������� '+DM.qrRes.FieldByName('Fio_Assembly').AsString;
    end;

   DM.qrResPos.Close;

{
   DM.qrResPos.SQL.Clear;
   DM.qrResPos.SQL.Add('select a.names,c.art_code,c.kol,c.cena,IsNull((select Max(Art_Code) from NoScan n where n.art_code=c.Art_Code),0) as IsScan');
   DM.qrResPos.SQL.Add('from (select art_code,Max(names) as names, Max(cena) as cena from SprTov group by art_code) as a, ');
   DM.qrResPos.SQL.Add('     DtRes c ');
   DM.qrResPos.SQL.Add('where a.art_code=c.art_code and');
   DM.qrResPos.SQL.Add('      c.idres='+DM.qrRes.FieldByName('idres').AsString);
   DM.qrResPos.SQL.Add('order by a.names ');
}

   DM.qrResPos.SQL.Text:='exec spY_DtResList '+DM.qrRes.FieldByName('idres').AsString;
   DM.qrResPos.Open;

  except
   on E:Exception do MainF.MessBox('������ ������� � ����������� �����: '+E.Message);
  end;

 end;

procedure TWorkResF.ComboBox2Change(Sender:TObject);
var D1,D31:TDateTime;
 begin
  if ComboBox2.ItemIndex<>-1 then
   begin
    GetDaysOfMonth(ComboBox2.ItemIndex+1,D1,D31);
    dtStart.Date:=D1;
    dtEnd.Date:=D31;
   end;
 end;

procedure TWorkResF.ComboBox1Change(Sender:TObject);
 begin
  FilterRes;
 end;

procedure TWorkResF.dtStartCloseUp(Sender:TObject);
 begin
  FilterRes;
 end;

procedure TWorkResF.dtEndCloseUp(Sender: TObject);
 begin
  FilterRes;
 end;

procedure TWorkResF.ComboBox2CloseUp(Sender: TObject);
 begin
  FilterRes;
 end;

procedure TWorkResF.BitBtn2Click(Sender: TObject);
 begin
  Close;
 end;

procedure TWorkResF.FlashStatus;
var V:Boolean;
 begin
  bbSetRes.Visible:=False;
  bbClearRes.Visible:=False;

  if DM.qrRes.IsEmpty then Exit;

  if DM.qrRes.FieldByName('Priznak').AsInteger in [3] then // ���� ����� �� ������ ��� � ������ �� ������, �� ������ ����� ��������
   begin
    bbClearRes.Visible:=False;
    Exit;
   end;

  if (DM.qrRes.FieldByName('Closed').AsInteger=1) and (DM.qrRes.FieldByName('Priznak').AsInteger<>1) then bbSetRes.Visible:=True else
  if (DM.qrRes.FieldByName('Closed').AsInteger=0) then bbClearRes.Visible:=True;

  V:=bbClearRes.Visible;
  if DM.qrRes.FieldByName('Priznak').AsInteger=6 then
   begin
    GroupBox1.Height:=205;
    bbClearRes.Visible:=False;

    lbDtpolis.Caption:=DM.qrRes.FieldByName('dt_polis').AsString;
    lbNnpolis.Caption:=DM.qrRes.FieldByName('nn_polis').AsString;
    dtdostav.Caption:=DM.qrRes.FieldByName('dt_dostav').AsString;
    lbFransh.Caption:=CurrToStrF(DM.qrRes.FieldByName('fransh').AsCurrency,ffFixed,2)+' ���.';

    lbBezn1.Caption:=CurrToStrF(DM.qrRes.FieldByName('Bezn1').AsCurrency,ffFixed,2)+' ���.';

    lbPhone.Caption:=DM.qrRes.FieldByName('phone').AsString;
    lbnnStrah.Caption:=DM.qrRes.FieldByName('StrahDescr').AsString;
    lbAYKABU.Caption:=DM.qrRes.FieldByName('YAKABU').AsString;
    lbNumOrder.Caption:=DM.qrRes.FieldByName('NumOrder').AsString;

    Panel2.Visible:=True;
   end else begin
             GroupBox1.Height:=238;
             bbClearRes.Visible:=V;
             Panel2.Visible:=False;
            end;
 end;

procedure TWorkResF.bbClearResClick(Sender: TObject);
 begin
   try

    if (DM.qrRes.FieldByName('Priznak').AsInteger in [1,4]) or
       (DM.qrRes.FieldByName('id_apteka_from').AsInteger>0) then
     begin
      CancelResF:=TCancelResF.Create(Self);
      try

       CancelResF.PrefixID:=DM.qrRes.FieldByName('PrefixID').AsString;
       CancelResF.NumZakaz:=DM.qrRes.FieldByName('NumZakaz').AsInteger;

       if CancelResF.PrefixID='' then CancelResF.PrefixID:=DM.qrRes.FieldByName('NumZakaz').AsString;

       CancelResF.Phone:=DM.qrRes.FieldByName('Phone').AsString;
       Application.ProcessMessages;
       CancelResF.ShowModal;

       if CancelResF.Flag<>1 then Exit;
      finally
       CancelResF.Free;
      end;
     end;

   if DM.qrRes.IsEmpty then Exit;
   if DM.qrRes.FieldByName('Closed').AsInteger<>0 then Exit;
   if MainF.MessBox('�� ������������� ������ ����� �����?',52)<>ID_YES then Exit;

   DM.Qr4.Close;
   DM.Qr4.SQL.Clear;
   DM.Qr4.SQL.Add('update DhRes set Closed=1,id_close='+IntToStr(Prm.UserID)+',date_close=getdate() where idres='+DM.qrRes.FieldByName('idres').AsString);
   DM.Qr4.ExecSQL;
   FilterRes;
  except
   on E:Exception do MainF.MessBox('������ ������� � ����������� �����: '+E.Message);
  end;
 end;

procedure TWorkResF.BitBtn3Click(Sender: TObject);
var eID:Integer;
    Res,PrefID:String;
 begin
  if DM.qrRes.IsEmpty then Exit;
  if DM.qrResPos.IsEmpty then Exit;
  if DM.qrRes.FieldByName('Closed').AsInteger>=1 then Exit;

  if AnsiUpperCase(DM.qrRes.FieldByName('FIO').AsString)=AnsiUpperCase('1-������ ������� ���������') then
   begin
    MainF.MessBox('������ ����� ��������� � ��� ������! �� ������� ������� ����������� � ����!');
    Exit;
   end;

  if (DM.qrRes.FieldByName('Priznak').AsInteger=3) and
     (DM.qrRes.FieldByName('CanSale').AsInteger=0) then
   begin
    MainF.MessBox('�� ������� ������ �� ������ ���������� ������� ��������� ���������!');
    Exit;
   end;

  if Prm.UserRole=R_DISP then
   begin
    MainF.MessBox('� ���� ������ ������ ��������� ��������� � ��� ������� ������!');
    Exit;
   end;

  if (DM.qrRes.FieldByName('PaySystemId').AsInteger=1) and
     (DM.qrRes.FieldByName('Status_Pay').AsInteger<>7) then
   begin
    MainF.MessBox('�� ������� ������ ��� ������������� �� ������! ����������� � Call-����� �� ���. 093-170-0911 ��� ��������� ���������� �� ������!');
    Exit;
   end;

  if {(TypeZakaz=2) and} (Filt='') and (DM.qrRes.FieldByName('TypeZakazI').AsInteger=0) and (DM.qrRes.FieldByName('Priznak').AsInteger<>6) then
   begin
    AddResF:=TAddResF.Create(Self);
    try

     AddResF.RadioButton1.Visible:=True;
     AddResF.Label1.Visible:=False;
     Application.ProcessMessages;
     AddResF.ShowModal;
     if AddResF.Flag<>1 then Exit;

     if AddResF.RadioButton1.Checked then
      begin
       if DM.qrRes.FieldByName('PrefixID').AsString='' then PrefID:=DM.qrRes.FieldByName('iddoc').AsString
                                                       else PrefID:=DM.qrRes.FieldByName('PrefixID').AsString;
       if (AddResF.Edit1.Text<>DM.qrRes.FieldByName('iddoc').AsString) and (AddResF.Edit1.Text<>PrefID) then
        begin
         MainF.MessBox('����� ������ ������ �����������!');
         Exit;
        end;
      end else begin
                if AddResF.Edit3.Text<>DM.qrRes.FieldByName('Phone').AsString then
                 begin
                  MainF.MessBox('����� �������� ������ �����������!');
                  Exit;
                 end;
               end;

    finally
     AddResF.Free;
    end;
   end;

  if MainF.MessBox('�� ������������� ������ ������� ��������������� ���������?',52)<>ID_YES then Exit;

  if (DM.qrRes.FieldByName('PaySystemId').AsInteger=1) and
     (DM.qrRes.FieldByName('Status_Pay').AsInteger=7) then
   MainF.MessBox('������ ����� ��� ��������, ���������� ������� ��� � ������ ������ �������� ������� �� ������ ����� � �����!',
                  48,GetFont('MS Sans Serif',12,clBlue,[fsBold]),0,Res);

  if (DM.qrRes.FieldByName('Priznak').AsInteger=4) and
     (DM.qrRes.FieldByName('TypeZakazR').AsInteger=2) then
   MainF.MessBox('������ ����� ��� ��������, ���������� ������� ��� � ������ ������ �������� ������� �� ������ ����� � �����!',
                  48,GetFont('MS Sans Serif',12,clBlue,[fsBold]),0,Res);

  if DM.qrRes.FieldByName('id_strah').AsInteger>0 then
   if MainF.MessBox('�� ����������� ������ ��������� � 2-� ����������� �� ������� ������ (������ "������� ����-�����" � ����������, ��� � ����������� ����� ����������)?',
                     52,GetFont('MS Sans Serif',12,clBlue,[fsBold]),0,Res)<>ID_YES then Exit;

  IDRES:=DM.qrRes.FieldByName('idres').AsInteger;
  IsPayMaster:=DM.qrRes.FieldByName('PaySystemId').AsInteger=1;
  TypeRes:=DM.qrRes.FieldByName('Priznak').AsInteger;

  FIO:=DM.qrRes.FieldByName('FIO').AsString;

  NumZakaz:=DM.qrRes.FieldByName('NumZakaz').AsInteger;
  Phone:=DM.qrRes.FieldByName('Phone').AsString;
  id_doctor:=DM.qrRes.FieldByName('id_doctor').AsInteger;
  card_doctor:=DM.qrRes.FieldByName('card_doctor').AsString;
  TypeZakaz:=DM.qrRes.FieldByName('TypeZakazR').AsInteger;

  id_strah:=DM.qrRes.FieldByName('id_strah').AsInteger;
  name_strah:=DM.qrRes.FieldByName('StrahDescr').AsString;
  nn_polis:=DM.qrRes.FieldByName('nn_polis').AsString;
  NumOrder:=DM.qrRes.FieldByName('NumOrder').AsString;
  dt_polis:=DM.qrRes.FieldByName('dt_polis').AsDateTime;
  fransh:=DM.qrRes.FieldByName('fransh').AsCurrency;

  // ���������� �������� � �������
  IsKurDostMakeOut:=(Prm.IsKurDostavka=True) and
                    (DM.qrRes.FieldByName('TypeZakazI').AsInteger=1) and
                    (DM.qrRes.FieldByName('id_apteka_from').AsInteger=0);

{
  if (TypeRes=1) then
   begin
    if Not EnterIntValue(eID,'������� ����� ������. ��� ��� ������ �������� ����������!') then Exit;
    if DM.qrRes.FieldByName('iddoc').AsInteger<>eID then
     begin
      MainF.MessBox('������ �������� ����� ������!');
      Exit;
     end;
   end;
}
  Flag:=1;
  MainF.ForReserve:=True;
  Close;
 end;

procedure TWorkResF.bbSetResClick(Sender: TObject);
 begin
  if DM.qrRes.IsEmpty then Exit;
  if DM.qrRes.FieldByName('Closed').AsInteger<>1 then Exit;
  if MainF.MessBox('�� ������������� ������ ������ ���������� �����?'#10#10'����� ����� ����������� � ������ ������� ��������!',52)<>ID_YES then Exit;
  try
   DM.Qr4.Close;
   DM.Qr4.SQL.Clear;
   DM.Qr4.SQL.Add('update DtRes set kol=(case when kol>IsNull((select Sum(ostat) from SprTov s where s.art_code=DtRes.art_code),0) then ');
   DM.Qr4.SQL.Add('                     IsNull((select Sum(ostat) from SprTov s where s.art_code=DtRes.art_code),0) else kol end) ');
   DM.Qr4.SQL.Add('where idres='+DM.qrRes.FieldByName('idres').AsString);
   DM.Qr4.SQL.Add('delete from DtRes where kol<=0 and idres='+DM.qrRes.FieldByName('idres').AsString);
   DM.Qr4.SQL.Add('delete from DhRes where idres not in (select idres from DtRes)');

   DM.Qr4.SQL.Add('update DhRes set Closed=0,id_close=null,date_close=null where idres='+DM.qrRes.FieldByName('idres').AsString);
   DM.Qr4.ExecSQL;
   FilterRes;
  except
   on E:Exception do MainF.MessBox('������ ������� � ����������� �����: '+E.Message);
  end;
 end;

procedure TWorkResF.FormActivate(Sender: TObject);
 begin
  FilterRes;
 end;


procedure TWorkResF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var db:TDBGrid;
 begin
  if Sender=nil then Exit;
  db:=TDBGrid(Sender);

  if db.DataSource.DataSet.FieldByName('IsAssembly').AsInteger=1 then
   db.Canvas.Brush.Color:=$00C7DAC2;

  if DataCol=5 then
   Case db.DataSource.DataSet.FieldByName('TypeBrI').AsInteger of
    1:db.Canvas.Brush.Color:=clYellow;
    2:db.Canvas.Brush.Color:=clLime;
   end;

  db.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  db.Canvas.Pen.Color:=clWhite;

  db.Canvas.MoveTo(Rect.Left,Rect.Bottom);
  db.Canvas.LineTo(Rect.Right+1,Rect.Bottom);

  db.Canvas.MoveTo(Rect.Right,Rect.Top);
  db.Canvas.LineTo(Rect.Right,Rect.Bottom+1);

  if (gdSelected in State) then
   begin
    db.Canvas.Pen.Color:=$00C08000;
    db.Canvas.Brush.Color:=$00C08000;
    db.Canvas.FillRect(Rect);

    db.Canvas.Font.Color:=clBlack;
    db.Canvas.TextOut(Rect.Left+2, Rect.Top+2,Column.Field.AsString);
    db.Canvas.Font.Color:=clWhite;
{
    db.Canvas.MoveTo(Rect.Left,Rect.Bottom);
    db.Canvas.LineTo(Rect.Right+1,Rect.Bottom);
}
    db.Canvas.MoveTo(Rect.Right,Rect.Top);
    db.Canvas.LineTo(Rect.Right,Rect.Bottom);
   end;
 end;

procedure TWorkResF.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var db:TDBGrid;
 begin
  if Sender=nil then Exit;
  db:=TDBGrid(Sender);

  db.Canvas.Pen.Color:=clWhite;

  db.Canvas.MoveTo(Rect.Left,Rect.Bottom);
  db.Canvas.LineTo(Rect.Right+1,Rect.Bottom);

  db.Canvas.MoveTo(Rect.Right,Rect.Top);
  db.Canvas.LineTo(Rect.Right,Rect.Bottom+1);

  if (gdSelected in State) then
   begin

    db.Canvas.Pen.Color:=$008080FF;
    db.Canvas.Brush.Color:=$008080FF;
    db.Canvas.FillRect(Rect);

    db.Canvas.Font.Color:=clBlack;
    if DataCol=1 then db.Canvas.TextOut(Rect.Left+2, Rect.Top+2,Column.Field.AsString)
                 else db.Canvas.TextOut(Rect.Right-db.Canvas.TextWidth(Column.Field.AsString)-3, Rect.Top+2,Column.Field.AsString);

    db.Canvas.Font.Color:=clWhite;
{
    db.Canvas.MoveTo(Rect.Left,Rect.Bottom);
    db.Canvas.LineTo(Rect.Right+1,Rect.Bottom);
}
    db.Canvas.MoveTo(Rect.Right,Rect.Top);
    db.Canvas.LineTo(Rect.Right,Rect.Bottom);
   end;
 end;

procedure TWorkResF.BitBtn1Click(Sender: TObject);
var Res:Integer;
 begin
  if DM.qrRes.IsEmpty then Exit;
  if MainF.MessBox('�� ������������� ������ �������� ����� ��� ���������?',52)<>ID_YES then Exit;
  try
   DM.QrEx.Close;
   DM.QrEx.SQL.Text:='exec spY_SetOrderAsAssembly '+DM.qrRes.FieldByName('idres').AsString+','+IntToStr(Prm.ID_Gamma);
   DM.QrEx.Open;
   Res:=DM.QrEx.FieldByName('Res').AsInteger;
   FilterRes;
   Case Res of
    -1:MainF.MessBox('������ ����� ��� ������� '+DM.QrEx.FieldByName('Date_Assembly').AsString+' ����������� '+DM.QrEx.FieldByName('Fio_Assembly').AsString);
     1:MainF.MessBox('������� "���������" ������� ����������!',64);
   end;
   BitBtn4Click(sender);
  except
   on E:Exception do MainF.RegisterError('������ ��������� �������� "���������": ',E.Message);
  end;
 end;

procedure TWorkResF.BitBtn4Click(Sender: TObject);
 begin
  if DM.qrRes.IsEmpty then Exit;

  DM.Qr.Close;
  DM.Qr.SQL.Text:='exec spY_DtResList '+DM.qrRes.FieldByName('idres').AsString+',1';
  DM.Qr.Open;

  PrintRep.Clear;
  PrintRep.SetDefault;
  PrintRep.Qr:=DM.Qr;
  PrintRep.Orientation:=O_LANDS;
  PrintRep.Font.Name:='Arial';
  PrintRep.Font.Size:=5;

  PrintRep.AddText('����� �'+DM.qrRes.FieldByName('NumZakaz').AsString+#10);
  PrintRep.AddText('���: '+DM.qrRes.FieldByName('FIO').AsString+#10);
  PrintRep.AddText('���� ������������: '+DM.qrRes.FieldByName('Date_Res').AsString+#10#10);

  PrintRep.Font.Size:=4;
  PrintRep.PrintTable(False,0,0);

  PrintRep.PreView;
 end;

procedure TWorkResF.BitBtn5Click(Sender: TObject);
var Blob:TMemoryStream;
    G:TGuid;
    FName,ExtN:String;
    Res:Cardinal;
 begin
  if DM.qrRes.IsEmpty then Exit;

  CreateGUID(G);
  ForceDirectories('C:\LOG\TmpFiles\');
  DelDir('C:\LOG\TmpFiles\*');
  ExtN:=ExtractFileExt(DM.qrRes.FieldByname('fnameblob').AsString);
  FName:='C:\LOG\TmpFiles\'+GUIDToString(G)+ExtN;
//  ShowMessage(FName);
  DeleteFile(FName);
  try
   DM.QrEx.Close;
   DM.QrEx.SQL.Text:='select Data from dhres_blob where id='+DM.qrRes.FieldByName('id_blob').AsString;
   DM.QrEx.Open;
   if DM.QrEx.IsEmpty then Exit;

   Blob:=TADOBlobStream.Create(TBlobField(DM.QrEx.FieldByName('Data')),bmRead);
   try
    Blob.SaveToFile(FName);
   finally
    Blob.Free;
   end;

  Res:=ShellExecute(0,'open',PChar(FName),nil,nil,SW_SHOWNORMAL);
//  ShowMessageI(Res);
  if Res<32 then
   WinExec(PChar(FName),SW_SHOW);

  except
   on E:Exception do
    MainF.RegisterError('�������� ����� ������',E.Message,True);
  end;
 end;

procedure TWorkResF.FormClose(Sender:TObject; var Action:TCloseAction);
 begin
  if Flag=0 then MainF.DeleteKurZakaz(IDRes_Kur);
 end;

end.


