codeunit 89140 "Test NameFormat Interface FLX"
{
    SubType = Test;
    TestPermissions = Disabled;

    var
        Person: Record "Person FLX";
        Any: Codeunit Any;
        Assert: Codeunit "Library Assert";
        IsInitialized: Boolean;

    trigger OnRun()
    begin
        // [FEATURE] Test Name Interface
    end;

    [Test]
    procedure SetNameFormatToNamesStub()
    // [FEATURE] Test Name Interface
    begin
        // [Scenario #0001] Set name format to Names Stub
        // [Given] Person
        Initialize();

        // [When] Set name format of person to Names Stub
        SetNameFormatOfPerson(Person, "Name Format FLX"::"Names Stub");

        // [Then] "Formatted Name" equals Names Stub
        VerifyFormattedNameEqualsNamesStub(Person);
    end;

    [Test]
    procedure SetNameFormatToNamesMock()
    // [FEATURE] Test Name Interface
    begin
        // [Scenario #0002] Set name format to Names Mock
        // [Given] Person
        Initialize();

        // [When] Set name format of person to Names Mock
        SetNameFormatOfPerson(Person, "Name Format FLX"::"Names Mock");

        // [Then] "Formatted Name" equals Names Mock
        VerifyFormattedName(Person, 'airaM cuL');
    end;

    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"Test NameFormat Interface FLX");

        if IsInitialized then
            exit;

        LibraryTestInitialize.OnBeforeTestSuiteInitialize(Codeunit::"Test NameFormat Interface FLX");

        // [Given] Person
        CreatePerson(Person, 'Luc', 'Maria');

        IsInitialized := true;
        Commit();

        LibraryTestInitialize.OnAfterTestSuiteInitialize(Codeunit::"Test NameFormat Interface FLX");
    end;

    local procedure CreatePerson(var Person: Record "Person FLX"; FirstName: Text[100]; SecondName: Text[100])
    begin
        Person.Code := Any.AlphanumericText(MaxStrLen(Person.Code));
        Person."First Name" := FirstName;
        Person."Second Name(s)" := SecondName;
        Person.Insert();
    end;

    local procedure SetNameFormatOfPerson(var Person: Record "Person FLX"; NameFormat: Enum "Name Format FLX")
    begin
        Person."Name Format" := NameFormat;
        Person.Modify();
    end;

    local procedure VerifyFormattedNameEqualsNamesStub(var Person: Record "Person FLX")
    begin
        Assert.AreEqual(
            'Names Stub',
            Person.GetFormattedName(),
            StrSubstNo('%1 = %2', Person.FieldCaption("Name Format"), Person."Name Format")
        );
    end;

    local procedure VerifyFormattedName(var Person: Record "Person FLX"; ExpectedFormattedName: Text[200])
    begin
        Assert.AreEqual(
            ExpectedFormattedName,
             Person.GetFormattedName(),
            StrSubstNo('%1 = %2', Person.FieldCaption("Name Format"), Person."Name Format")
        );
    end;
}