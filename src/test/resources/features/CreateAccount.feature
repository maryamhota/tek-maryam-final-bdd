import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import tek.bdd.pages.CreateAccountPageObject;
import tek.bdd.utilities.RandomGenerator;
import tek.bdd.utilities.SeleniumUtility;

public class CreateAccountSteps extends SeleniumUtility {

@When("click on Crate Primary Account link")
public void clickOnLink() {
clickOnElement(CreateAccountPage.CREATE_PRIMARY_ACCOUNT_LINK);
}

@Then("validate section title to be Create Primary Account Holder")
public void validateSectionTitleToBe() {
String createAccountHolderTitle = getElementText(CreateAccountPageObject.CREATE_PRIMARY_ACCOUNT_HOLDER_TILE);
Assert.assertEquals("Create Primary Account Holder", createAccountHolderTitle);
}

@Then("fill up create account form")
public void fillUpCreateAccountForm() {
String prefix = "Jawid";
String randomEmail = RandomGenerator.randomEmail(prefix);
sendText(CreateAccountPageObject.EMAIL_INPUT, randomEmail);
selectFromDropDown(CreateAccountPageObject.PREFIX_SELECT, "Mrs.");
sendText(CreateAccountPageObject.FIRST_NAME_INPUT, "Maryam");
sendText(CreateAccountPageObject.LAST_NAME_INPUT, "Hotak");
selectFromDropDown(CreateAccountPageObject.GENDER_SELECT, "Female");
selectFromDropDown(CreateAccountPageObject.MARITAL_STATUS_SELECT, "Married");
sendText(CreateAccountPageObject.EMPLOYMENT_STATUS, "Test Engineer");
sendText(CreateAccountPageObject.DATE_OF_BIRTH, "04/04/1983");
}

@Then("click on Create Account button")
public void clickOnCreateAccountButton() {
clickOnElement(CreateAccountPageObject.CREATE_ACCOUNT_BUTTON);
}

@Then("validate Sign up your account title is exist")
public void validateSignUpYourAccountTitleIsExist() {
String actualSignUpTitle = getElementText(CreateAccountPage.SIGN_UP_YOUR_ACCOUNT_TITLE);
Assert.assertEquals("Sign up your account", actualSignUpTitle);

}
@Then("validate user full name is displayed")
public void validateUserFullNameIsDisplayed() {
boolean userActualFullName = isElementIsDisplayed(CreateAccountPage.USER_FULL_NAME);
Assert.assertTrue("User full name should be displayed", userActualFullName);

}
@Then("validate email address shows as expected")
public void validateEmailAddressShowsAsExpected() {
boolean userActualEmailAddress = isElementIsDisplayed(CreateAccountPage.USER_EMAIL_ADDRESS_TITLE);
Assert.assertTrue("Email address must be displayed as expected", userActualEmailAddress);

}
@When("when the user fill up sign up form")
public void whenTheUserFillUpSignUpForm() {
sendText(CreateAccountPage.USERNAME_INPUT, "Maryam");
sendText(CreateAccountPage.PASSWORD_INPUT, "Tek@1234");
sendText(CreateAccountPage.CONFIRM_PASSWORD_INPUT, "Tek@1234");
}
@Then("click on submit button")
public void clickOnSubmitButton() {
clickOnElement(CreateAccountPage.SUBMIT_BUTTON);
}

@Then("fill up create account form page")
public void fillUpCreateAccountFormPage() {

sendText(CreateAccountPageObject.EMAIL_INPUT, "mhotak.us@gmail.com");
selectFromDropDown(CreateAccountPageObject.PREFIX_SELECT, "Mrs.");
sendText(CreateAccountPageObject.FIRST_NAME_INPUT, "Maryam");
sendText(CreateAccountPageObject.LAST_NAME_INPUT, "Hotak");
selectFromDropDown(CreateAccountPageObject.GENDER_SELECT, "Female");
selectFromDropDown(CreateAccountPageObject.MARITAL_STATUS_SELECT, "Married");
sendText(CreateAccountPageObject.EMPLOYMENT_STATUS, "Test Engineer");
sendText(CreateAccountPageObject.DATE_OF_BIRTH, "04/04/1983");
}
@When("validate account error message")
public void validateAccountErrorMessage() {
String errorMessage = getElementText(CreateAccountPage.ERROR_MESSAGE);
Assert.assertEquals("ERROR", errorMessage);
System.out.println(errorMessage);

}
}