interface "INameFormat FLX 2"
{
    procedure FormattedName(Person: Record "Person FLX"): Text;
    procedure FormattedName(Person: Record "Person FLX"; Check: Boolean): Text;
}