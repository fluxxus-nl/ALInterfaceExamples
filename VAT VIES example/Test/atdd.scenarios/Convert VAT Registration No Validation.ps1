& "./atdd.scenarios/VAT Registration No Validation.ps1" | `
    ConvertTo-ALTestCodeunit `
        -CodeunitID 89700 `
        -CodeunitName 'VAT Reg. No. Validation' `
        -InitializeFunction `
        -GivenFunctionName "Create {0}" `
        -ThenFunctionName "Verify {0}" `
        | Out-File '.\test\VATRegistrationNoValidation_2.Codeunit.al'