enum 80104 "Name Format FLX" implements "INameFormat FLX"
{
    Caption = 'Name Format';
    Extensible = true;
    DefaultImplementation = "INameFormat FLX" = "First Name FLX";

    value(0; "First Name")
    {
        Caption = 'First Name';
        Implementation = "INameFormat FLX" = "First Name FLX";
    }
    value(1; "Second Name(s)")
    {
        Caption = 'Second Name(s)';
        Implementation = "INameFormat FLX" = "Second Names FLX";
    }
    value(2; "All Names")
    {
        Caption = 'All Names';
        Implementation = "INameFormat FLX" = "All Names FLX";
    }
}