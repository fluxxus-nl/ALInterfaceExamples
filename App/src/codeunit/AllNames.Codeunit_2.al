codeunit 80119 "All Names FLX 2" implements "INameFormat FLX","INameFormat FLX 2"
{
    Access = Internal;

    internal procedure FormattedName(Person: Record "Person FLX"): Text
    begin
        case true of
            (Person."First Name" = '') and (Person."Second Name(s)" = ''):
                exit('');
            Person."First Name" = '':
                exit(Person."First Name");
            Person."Second Name(s)" = '':
                exit(Person."Second Name(s)");
            else
                exit(Person."First Name" + ' ' + Person."Second Name(s)");
        end;
    end;

    internal procedure FormattedName(Person: Record "Person FLX"; Check: Boolean): Text
    begin
        case true of
            (Person."First Name" = '') and (Person."Second Name(s)" = ''):
                exit('');
            Person."First Name" = '':
                exit(Person."First Name");
            Person."Second Name(s)" = '':
                exit(Person."Second Name(s)");
            else
                exit(Person."First Name" + ' ' + Person."Second Name(s)");
        end;
    end;
}