table 80100 "Person FLX"
{
    Caption = 'Person';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; "First Name"; Text[100])
        {
            Caption = 'First Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Second Name(s)"; Text[100])
        {
            Caption = 'Second Name(s)';
            DataClassification = ToBeClassified;
        }
        field(4; "Last Name"; Text[100])
        {
            Caption = 'Last Name';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    procedure GetFormattedName(): Text
    var
        StringUtils: Codeunit "String Utils FLX";
        FullName: Text;
    begin
        FullName := "First Name" + ' ' + "Last Name";
        exit(StringUtils.ReduceSpaces(FullName));
    end;
}