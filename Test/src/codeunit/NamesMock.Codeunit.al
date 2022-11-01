codeunit 89100 "Names Mock FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    var
        StringUtils: Codeunit "String Utils FLX";
        NewFormattedName: Text;
    begin
        NewFormattedName := Person."First Name" + ' ' + Person."Second Name(s)";
        NewFormattedName := StringUtils.ReduceSpaces(NewFormattedName);
        exit(Reverse(NewFormattedName))
    end;

    local procedure Reverse(String: Text[200]): Text[200]
    var
        NewString: Text[200];
        tempChar: Char;
        halfLength, i, n : Integer;
    begin
        n := StrLen(String);
        halfLength := n DIV 2;
        NewString := String;
        for i := 1 to halfLength do begin
            tempChar := NewString[i];
            NewString[i] := NewString[n + 1 - i];
            NewString[n + 1 - i] := tempChar;
        end;
        exit(NewString);
    end;
}