//---------------------------------------------------------------------------

#ifndef uDataH
#define uDataH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include "dxmdaset.hpp"
#include <Data.DB.hpp>
//---------------------------------------------------------------------------
class TDataModule1 : public TDataModule
{
__published:	// IDE-managed Components
	TDataSource *dsCategories;
	TDataSource *dsProducts;
	TdxMemData *mdCategories;
	TAutoIncField *mdCategoriesCategoryID;
	TWideStringField *mdCategoriesCategoryName;
	TWideMemoField *mdCategoriesDescription;
	TBlobField *mdCategoriesPicture;
	TdxMemData *mdProducts;
	TAutoIncField *mdProductsProductID;
	TWideStringField *mdProductsProductName;
	TIntegerField *mdProductsSupplierID;
	TIntegerField *mdProductsCategoryID;
	TWideStringField *mdProductsQuantityPerUnit;
	TCurrencyField *mdProductsUnitPrice;
	TSmallintField *mdProductsUnitsInStock;
	TSmallintField *mdProductsUnitsOnOrder;
	TSmallintField *mdProductsReorderLevel;
	TBooleanField *mdProductsDiscontinued;
	TWideStringField *mdProductsEAN13;
private:	// User declarations
public:		// User declarations
	__fastcall TDataModule1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDataModule1 *DataModule1;
//---------------------------------------------------------------------------
#endif
