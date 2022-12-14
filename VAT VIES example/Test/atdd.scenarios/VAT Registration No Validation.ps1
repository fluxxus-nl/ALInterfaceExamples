Feature 'VAT Registration No. Validation ' {
    Scenario 0001 'Test valid VAT registration number with DI' {
        Given 'EU country'
        Given 'Well formatted VAT registration number'
        Given 'Enabled service'
        Given 'Mock service handling codeunit returning valid'
        When 'Set and validate country and VAT registration number'
        Then 'Validation details page is shown'
        Then 'Validation details contains name and address'
        Then 'VAT registration log entry exists'
        Then 'VAT registration log User Id equals current user'
        Then 'VAT registration log Verified Date equals current datetime'
        Then 'VAT registration log Status equals valid'
        Then 'VAT registration log Request Identifier is populated'
        Then 'VAT registration log Details Status equals Not Valid'
        Then 'VAT registration log Verified Name equals name of details'
        Then 'VAT registration log Verified Address equals address of details'
    }
        
    Scenario 0002 'Test invalid VAT registration number with DI' {
        Given 'EU country'
        Given 'Well formatted VAT registration number'
        Given 'Enabled service'
        Given 'Mock service handling codeunit returning invalid'
        When 'Set and validate country and VAT registration number'
        Then 'No match found message thrown'
        Then 'VAT registration log entry exists'
        Then 'VAT registration log User Id equals current user'
        Then 'VAT registration log Verified Date equals current datetime'
        Then 'VAT registration log Status equals Invalid'
        Then 'VAT registration log Request Identifier is empty'
        Then 'VAT registration log Details Status equals Not Verified'
        Then 'VAT registration log has no validation details' 
    } 
}