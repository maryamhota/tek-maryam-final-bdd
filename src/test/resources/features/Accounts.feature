@Accounts_Scenario_1
Scenario: Login with CSR Credentials
Then validate Primary Accounts title is exist
Then close browser


@Accounts_Scenario_2
Scenario: Validate Primary Account Table
@@ -23,4 +23,3 @@ Feature: Testing Account Section
Then validate table row count to be 25
When change item per page to "50"
Then validate table row count to be 50
Then close browser