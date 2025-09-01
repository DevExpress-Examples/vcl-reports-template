unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxReport, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,  cxButtons,
  dxReport.Backend, cxControls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxReport.ConnectionString.JSON.DB,
  dxReport.ConnectionString.JSON, Vcl.StdCtrls, dxmdaset;

type
  TMainForm = class(TForm)
    dxReport1: TdxReport;
    dxReportDataConnectionManager1: TdxReportDataConnectionManager;
    btnShowDesigner: TcxButton;
    btnViewReport: TcxButton;
    gvCategories: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsProducts: TDataSource;
    dxReportDataConnectionManager1dxReportDataSetJSONConnection1: TdxReportDataSetJSONConnection;
    itmProducts: TdxReportDataSetCollectionItem;
    itmCategories: TdxReportDataSetCollectionItem;
    cxGrid1Level2: TcxGridLevel;
    gvProducts: TcxGridDBTableView;
    dsCategories: TDataSource;
    gvCategoriesCategoryID: TcxGridDBColumn;
    gvCategoriesCategoryName: TcxGridDBColumn;
    gvCategoriesDescription: TcxGridDBColumn;
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
    mdProducts: TdxMemData;
    mdCategories: TdxMemData;
    mdCategoriesCategoryID: TAutoIncField;
    mdCategoriesCategoryName: TWideStringField;
    mdCategoriesDescription: TWideMemoField;
    mdCategoriesPicture: TBlobField;
    mdProductsProductID: TAutoIncField;
    mdProductsProductName: TWideStringField;
    mdProductsSupplierID: TIntegerField;
    mdProductsCategoryID: TIntegerField;
    mdProductsQuantityPerUnit: TWideStringField;
    mdProductsUnitPrice: TCurrencyField;
    mdProductsUnitsInStock: TSmallintField;
    mdProductsUnitsOnOrder: TSmallintField;
    mdProductsReorderLevel: TSmallintField;
    mdProductsDiscontinued: TBooleanField;
    mdProductsEAN13: TWideStringField;
    procedure btnShowDesignerClick(Sender: TObject);
    procedure btnViewReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnShowDesignerClick(Sender: TObject);
begin
  dxReport1.ShowDesigner;
end;

procedure TMainForm.btnViewReportClick(Sender: TObject);
begin
  dxReport1.ShowViewer;
end;

end.
