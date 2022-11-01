codeunit 80110 "Full Name FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    var
        StringUtils: Codeunit "String Utils FLX";
        FullName: Text;
    begin
        FullName := Person."First Name" + ' ' + Person."Last Name";
        exit(StringUtils.ReduceSpaces(FullName));
    end;
}