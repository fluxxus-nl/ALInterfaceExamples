codeunit 80109 "First Name FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    begin
        exit(Person."First Name");
    end;
}