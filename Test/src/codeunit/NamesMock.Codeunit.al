codeunit 89100 "Names Mock FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    var
        NewFormattedName: Text;
    begin
        case true of
            (Person."First Name" = '') and (Person."Second Name(s)" = ''):
                exit('');
            Person."First Name" = '':
                NewFormattedName := Person."Second Name(s)";
            Person."Second Name(s)" = '':
                NewFormattedName := Person."First Name";
            else
                NewFormattedName := Person."First Name" + ' ' + Person."Second Name(s)";
        end;
        exit(Reverse(NewFormattedName))
    end;

    local procedure Reverse(String: Text[200]): Text[200]
    var
        NewString: Text[200];
        tempChar: Char;
        halfLength, i, N : Integer;
    begin
        N := StrLen(String);
        // halfLength := N / 2;
        halfLength := N DIV 2;
        NewString := String;
        for i := 1 to halfLength do begin
            tempChar := NewString[i];
            NewString[i] := NewString[N + 1 - i];
            NewString[N + 1 - i] := tempChar;
        end;
        exit(NewString);
    end;
}