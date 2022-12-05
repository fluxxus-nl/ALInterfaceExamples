pageextension 58700 "VAT Registration Config Ext." extends "VAT Registration Config"
{
    layout
    {
        addlast(General)
        {
            field("Handling Codeunit ID"; Rec."VAT Validation Handling Type")
            {
                ToolTip = 'Specifies the id of the codeunit that implements the interaction with the EU VAT Registration No. Validation Service.';
                ApplicationArea = All;
            }
        }
    }
}