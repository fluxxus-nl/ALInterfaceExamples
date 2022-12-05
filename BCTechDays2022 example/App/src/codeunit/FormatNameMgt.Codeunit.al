codeunit 80130 "Format Name Mgt FLX"
{
    procedure GetNameFormatHandler(var NameFormatHandler: Interface "INameFormat FLX")
    var
        FullName: codeunit "Full Name FLX";
    begin
        NameFormatHandler := FullName;
    end;
}