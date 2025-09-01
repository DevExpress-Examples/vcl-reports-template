//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxButtons.hpp"
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxCustomData.hpp"
#include "cxData.hpp"
#include "cxDataStorage.hpp"
#include "cxDBData.hpp"
#include "cxEdit.hpp"
#include "cxFilter.hpp"
#include "cxGraphics.hpp"
#include "cxGrid.hpp"
#include "cxGridCustomTableView.hpp"
#include "cxGridCustomView.hpp"
#include "cxGridDBTableView.hpp"
#include "cxGridLevel.hpp"
#include "cxGridTableView.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "cxNavigator.hpp"
#include "cxStyles.hpp"
#include "dxDateRanges.hpp"
#include "dxReport.Backend.hpp"
#include "dxReport.ConnectionString.JSON.DB.hpp"
#include "dxReport.ConnectionString.JSON.hpp"
#include "dxReport.hpp"
#include "dxScrollbarAnnotations.hpp"
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <Vcl.Menus.hpp>
#include <FireDAC.Phys.MSAcc.hpp>
#include <FireDAC.Phys.MSAccDef.hpp>
#include <FireDAC.Phys.ODBCBase.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TcxButton *btnShowDesigner;
	TcxButton *btnViewReport;
	TcxGrid *cxGrid1;
	TcxGridDBTableView *gvCategories;
	TcxGridDBColumn *gvCategoriesCategoryID;
	TcxGridDBColumn *gvCategoriesCategoryName;
	TcxGridDBColumn *gvCategoriesDescription;
	TcxGridDBColumn *gvCategoriesPicture;
	TcxGridDBTableView *gvProducts;
	TcxGridDBColumn *gvProductsProductID;
	TcxGridDBColumn *gvProductsProductName;
	TcxGridDBColumn *gvProductsSupplierID;
	TcxGridDBColumn *gvProductsCategoryID;
	TcxGridDBColumn *gvProductsQuantityPerUnit;
	TcxGridDBColumn *gvProductsUnitPrice;
	TcxGridDBColumn *gvProductsUnitsInStock;
	TcxGridDBColumn *gvProductsUnitsOnOrder;
	TcxGridDBColumn *gvProductsReorderLevel;
	TcxGridDBColumn *gvProductsDiscontinued;
	TcxGridDBColumn *gvProductsEAN13;
	TcxGridLevel *cxGrid1Level1;
	TcxGridLevel *cxGrid1Level2;
	TdxReport *dxReport1;
	TdxReportDataConnectionManager *dxReportDataConnectionManager1;
	TdxReportDataSetJSONConnection *dxReportDataConnectionManager1dxReportDataSetJSONConnection1;
	TdxReportDataSetCollectionItem *itmProducts;
	TdxReportDataSetCollectionItem *itmCategories;
	TFDConnection *FDConnection1;
	TFDQuery *fdProducts;
	TDataSource *dsProducts;
	TFDQuery *fdCategories;
	TDataSource *dsCategories;
	TdxReportDataSetJSONConnection *dxReportDataConnectionManager1dxReportDataSetJSONConnection2;
	TFDPhysMSAccessDriverLink *FDPhysMSAccessDriverLink1;
	void __fastcall btnShowDesignerClick(TObject *Sender);
	void __fastcall btnViewReportClick(TObject *Sender);
private:	// User declarations
protected:
    void __fastcall LoadData();
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
