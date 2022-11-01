codeunit 80110 "Full Name FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    var
        FullName: Text;
    begin
        FullName := Person."First Name" + ' ' + Person."Last Name";
        exit(FullName.Trim());
    end;
}