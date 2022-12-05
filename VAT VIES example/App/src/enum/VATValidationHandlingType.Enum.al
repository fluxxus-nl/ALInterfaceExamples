enum 58700 "VAT Validation Handling Type" implements "VAT Validation Handling Interface"
{
    Extensible = true;
    Caption = 'VAT Validation Handling Type';

    value(0; "VAT VIES")
    {
        Caption = 'VAT VIES';
        Implementation = "VAT Validation Handling Interface" = "Check VIES For VAT No And Log";
    }
}