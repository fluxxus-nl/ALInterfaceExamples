enum 80104 "Name Format FLX" implements "INameFormat FLX"
// , "INameFormat 2 FLX"
{
    Caption = 'Name Format';
    Extensible = true;
    DefaultImplementation = "INameFormat FLX" = "First Name FLX";

    value(0; "First Name")
    {
        Caption = 'First Name';
        Implementation = "INameFormat FLX" = "First Name FLX";
    }
    value(1; "Full Name")
    {
        Caption = 'Full Name';
        Implementation = "INameFormat FLX" = "Full Name FLX";
    }
    value(2; "Passport Name")
    {
        Caption = 'Passport Name';
        Implementation = "INameFormat FLX" = "Passport Name FLX";
    }
}