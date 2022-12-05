tableextension 58700 "VAT Reg. No. Srv Config Ext." extends "VAT Reg. No. Srv Config"
{
    fields
    {
        field(58700; "VAT Validation Handling Type"; Enum "VAT Validation Handling Type")
        {
            Caption = 'VAT Validation Handling Type';
            DataClassification = ToBeClassified;
        }
    }
}