object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 483
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnShowDesigner: TcxButton
    Left = 24
    Top = 32
    Width = 145
    Height = 25
    Caption = 'btnShowDesigner'
    TabOrder = 0
    OnClick = btnShowDesignerClick
  end
  object btnViewReport: TcxButton
    Left = 192
    Top = 32
    Width = 193
    Height = 25
    Caption = 'btnViewReport'
    TabOrder = 1
    OnClick = btnViewReportClick
  end
  object cxGrid1: TcxGrid
    Left = 24
    Top = 176
    Width = 521
    Height = 265
    TabOrder = 2
    object gvCategories: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataModule1.dsCategories
      DataController.KeyFieldNames = 'CategoryID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object gvCategoriesCategoryID: TcxGridDBColumn
        DataBinding.FieldName = 'CategoryID'
      end
      object gvCategoriesCategoryName: TcxGridDBColumn
        DataBinding.FieldName = 'CategoryName'
      end
      object gvCategoriesDescription: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
      end
    end
    object gvProducts: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataModule1.dsProducts
      DataController.DetailKeyFieldNames = 'CategoryID'
      DataController.KeyFieldNames = 'ProductID'
      DataController.MasterKeyFieldNames = 'CategoryID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object gvProductsProductID: TcxGridDBColumn
        DataBinding.FieldName = 'ProductID'
      end
      object gvProductsProductName: TcxGridDBColumn
        DataBinding.FieldName = 'ProductName'
        Width = 244
      end
      object gvProductsSupplierID: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierID'
      end
      object gvProductsCategoryID: TcxGridDBColumn
        DataBinding.FieldName = 'CategoryID'
      end
      object gvProductsQuantityPerUnit: TcxGridDBColumn
        DataBinding.FieldName = 'QuantityPerUnit'
        Width = 124
      end
      object gvProductsUnitPrice: TcxGridDBColumn
        DataBinding.FieldName = 'UnitPrice'
      end
      object gvProductsUnitsInStock: TcxGridDBColumn
        DataBinding.FieldName = 'UnitsInStock'
      end
      object gvProductsUnitsOnOrder: TcxGridDBColumn
        DataBinding.FieldName = 'UnitsOnOrder'
      end
      object gvProductsReorderLevel: TcxGridDBColumn
        DataBinding.FieldName = 'ReorderLevel'
      end
      object gvProductsDiscontinued: TcxGridDBColumn
        DataBinding.FieldName = 'Discontinued'
        Width = 34
      end
      object gvProductsEAN13: TcxGridDBColumn
        DataBinding.FieldName = 'EAN13'
        Width = 76
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvCategories
      object cxGrid1Level2: TcxGridLevel
        GridView = gvProducts
      end
    end
  end
  object dxReport1: TdxReport
    Left = 48
    Top = 88
  end
  object dxReportDataConnectionManager1: TdxReportDataConnectionManager
    Left = 112
    Top = 88
    object dxReportDataConnectionManager1dxReportDataSetJSONConnection1: TdxReportDataSetJSONConnection
      DisplayName = 'DataSetConnection'
      object itmProducts: TdxReportDataSetCollectionItem
        DataSet = DataModule1.mdProducts
        DataSetAlias = 'mdProducts'
      end
      object itmCategories: TdxReportDataSetCollectionItem
        DataSet = DataModule1.mdCategories
        DataSetAlias = 'mdCategories'
      end
    end
  end
end
