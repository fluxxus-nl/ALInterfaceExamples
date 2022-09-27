codeunit 89101 "Names Stub FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    begin
        exit('Names Stub')
    end;
}