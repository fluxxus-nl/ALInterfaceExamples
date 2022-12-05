enumextension 89700 "VAT Validation Handling Type" extends "VAT Validation Handling Type"
{

    value(89700; "Valid VAT VIES Mock")
    {
        Caption = 'Valid VAT VIES Mock';
        Implementation = "VAT Validation Handling Interface" = "Valid VIES Check";
    }
    value(89701; "Invalid VAT VIES Mock")
    {
        Caption = 'Invalid VAT VIES Mock';
        Implementation = "VAT Validation Handling Interface" = "Invalid VIES Check";
    }
}