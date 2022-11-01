codeunit 80111 "Passport Name FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    var
        StringUtils: Codeunit "String Utils FLX";
        PassportName: Text;
    begin
        PassportName := Person."First Name" + ' ' + Person."Second Name(s)" + ' ' + Person."Last Name";
        exit(StringUtils.ReduceSpaces(PassportName));
    end;
}