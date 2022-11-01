codeunit 80111 "Passport Name FLX" implements "INameFormat FLX"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    var
        PassportName: Text;
    begin
        PassportName := Person."First Name" + ' ' + Person."Second Name(s)" + ' ' + Person."Last Name";
        exit(ReduceSpaces(PassportName));
    end;

    local procedure ReduceSpaces(InputString: Text) OutputString: Text
    // after https://andreilungu.com/remove-extra-spaces-from-string/
    var
        i, n : Integer;
    begin
        n := StrLen(InputString);
        for i := 1 to n do
            if (InputString[i] = ' ') and (i < n) then begin
                if not (InputString[i + 1] in [32 .. 47, 58 .. 63]) then
                    OutputString += Format(InputString[i])
            end else
                OutputString += Format(InputString[i]);

        OutputString := OutputString.Trim();
    end;
}