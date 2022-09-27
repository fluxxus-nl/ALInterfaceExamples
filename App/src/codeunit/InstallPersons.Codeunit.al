codeunit 80100 "Install Persons FLX"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        SetupPersons();
    end;

    local procedure SetupPersons()
    begin
        CreatePerson('Luc', 'Roger Dionysius Maria', "Name Format FLX"::"First Name");
        CreatePerson('Thijs', 'Carlos Beator Maria', "Name Format FLX"::"Second Name(s)");
    end;

    local procedure CreatePerson(FirstName: Text; SecondNames: Text; NameFormat: Enum "Name Format FLX")
    var
        Person: Record "Person FLX";
    begin
        Person.Code := CopyStr(FirstName, 1, MaxStrLen(Person.Code));
        if not Person.Get(Person.Code) then begin
            Person."First Name" := FirstName;
            Person."Second Name(s)" := SecondNames;
            Person."Name Format" := NameFormat;
            Person.Insert();
        end;
    end;
}