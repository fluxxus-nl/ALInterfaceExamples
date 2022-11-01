codeunit 80100 "Install Persons FLX"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        SetupPersons();
    end;

    local procedure SetupPersons()
    begin
        CreatePerson('Luc', 'Roger Dionysius Maria', 'van Vugt');
        CreatePerson('Thijs', 'Carlos Beator Maria', 'van Vugt');
    end;

    local procedure CreatePerson(FirstName: Text; SecondNames: Text; LastName: Text)
    var
        Person: Record "Person FLX";
    begin
        Person.Code := CopyStr(FirstName, 1, MaxStrLen(Person.Code));
        if not Person.Get(Person.Code) then begin
            Person."First Name" := FirstName;
            Person."Second Name(s)" := SecondNames;
            Person."Last Name" := LastName;
            Person.Insert();
        end;
    end;
}