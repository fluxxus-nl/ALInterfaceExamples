page 80100 "PersonsFLX"
{
    Caption = 'Persons';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Person FLX";

    layout
    {
        area(Content)
        {
            repeater(RepeaterControl)
            {
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the first name of the person.';
                }
                field("Second Name(s)"; Rec."Second Name(s)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the second name(s) of the person.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the last name of the person.';
                }
                field("Name Format"; Rec."Name Format")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the name format.';

                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Formatted Name"; Rec.GetFormattedName())
                {
                    ApplicationArea = All;
                    ToolTip = 'Displays the formatted name.';
                    Caption = 'Formatted Name';
                    Editable = false;
                }
            }
        }
    }
}