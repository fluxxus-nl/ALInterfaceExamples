codeunit 80111 "All Names FLX" implements "INameFormat FLX"
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
}