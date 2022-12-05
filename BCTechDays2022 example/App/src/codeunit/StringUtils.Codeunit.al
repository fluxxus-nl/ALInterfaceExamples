codeunit 80140 "String Utils FLX"
{
    procedure ReduceSpaces(InputString: Text) OutputString: Text
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