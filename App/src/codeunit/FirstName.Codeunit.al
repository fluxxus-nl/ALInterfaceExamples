codeunit 80109 "First Name FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    var
        StringUtils: Codeunit "String Utils FLX";
    begin
        exit(StringUtils.ReduceSpaces(Person."First Name"));
    end;
}