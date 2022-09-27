codeunit 80110 "Second Names FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    begin
        exit(Person."Second Name(s)");
    end;
}