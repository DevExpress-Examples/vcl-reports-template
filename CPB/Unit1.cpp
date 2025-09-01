//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxButtons"
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxCustomData"
#pragma link "cxData"
#pragma link "cxDataStorage"
#pragma link "cxDBData"
#pragma link "cxEdit"
#pragma link "cxFilter"
#pragma link "cxGraphics"
#pragma link "cxGrid"
#pragma link "cxGridCustomTableView"
#pragma link "cxGridCustomView"
#pragma link "cxGridDBTableView"
#pragma link "cxGridLevel"
#pragma link "cxGridTableView"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "cxNavigator"
#pragma link "cxStyles"
#pragma link "dxDateRanges"
#pragma link "dxReport"
#pragma link "dxReport.Backend"
#pragma link "dxReport.ConnectionString.JSON"

#if defined(_WIN64)
  #pragma link "dxReport.ConnectionString.JSON.DB.O"
#else
  #pragma link "dxReport.ConnectionString.JSON.DB.OBJ"
#endif


#pragma link "dxScrollbarAnnotations"
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{
    this->LoadData();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::LoadData()
{
	FDConnection1->DriverName = "MSAcc";
	FDConnection1->Params->Add("Database=..\\..\\..\\nwind.mdb");
	FDConnection1->Connected = true;

	fdProducts->Active = true;
	fdCategories->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::btnShowDesignerClick(TObject *Sender)
{
	dxReport1->ShowDesigner();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::btnViewReportClick(TObject *Sender)
{
	dxReport1->ShowViewer();
}
//---------------------------------------------------------------------------

