unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  dxReport.Backend, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxReport.ConnectionString.JSON.DB,
  dxReport.ConnectionString.JSON, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    dxReportDataConnectionManager1: TdxReportDataConnectionManager;
    btnShowDesigner: TcxButton;
    btnViewReport: TcxButton;
    FDConnection1: TFDConnection;
    fdProducts: TFDQuery;
    gvCategories: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsProducts: TDataSource;
    dxReportDataConnectionManager1dxReportDataSetJSONConnection1: TdxReportDataSetJSONConnection;
    itmProducts: TdxReportDataSetCollectionItem;
    fdCategories: TFDQuery;
    itmCategories: TdxReportDataSetCollectionItem;
    cxGrid1Level2: TcxGridLevel;
    gvProducts: TcxGridDBTableView;
    dsCategories: TDataSource;
    gvCategoriesCategoryID: TcxGridDBColumn;
    gvCategoriesCategoryName: TcxGridDBColumn;
    gvCategoriesDescription: TcxGridDBColumn;
    gvCategoriesPicture: TcxGridDBColumn;
    gvProductsProductID: TcxGridDBColumn;
    gvProductsProductName: TcxGridDBColumn;
    gvProductsSupplierID: TcxGridDBColumn;
    gvProductsCategoryID: TcxGridDBColumn;
    gvProductsQuantityPerUnit: TcxGridDBColumn;
    gvProductsUnitPrice: TcxGridDBColumn;
    gvProductsUnitsInStock: TcxGridDBColumn;
    gvProductsUnitsOnOrder: TcxGridDBColumn;
    gvProductsReorderLevel: TcxGridDBColumn;
    gvProductsDiscontinued: TcxGridDBColumn;
    gvProductsEAN13: TcxGridDBColumn;
    procedure btnShowDesignerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnViewReportClick(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.LoadData;
begin
  FDConnection1.DriverName := 'MSAcc';
  FDConnection1.Params.Add('Database=..\..\..\nwind.mdb');
  FDConnection1.Connected := True;

  fdProducts.Active := True;
  fdCategories.Active := True;
end;

procedure TMainForm.btnShowDesignerClick(Sender: TObject);
begin
  dxReport1.ShowDesigner;
end;

procedure TMainForm.btnViewReportClick(Sender: TObject);
begin
  dxReport1.ShowViewer;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  LoadData;
end;

end.
