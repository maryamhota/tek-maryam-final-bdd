package tek.bdd.steps;

import io.cucumber.java.en.Then;
import org.junit.Assert;
import tek.bdd.pages.UserProfilePage;
import tek.bdd.utility.SeleniumUtility;

public class UserProfileSteps extends SeleniumUtility {

    @Then("click on profile button")
    public void clickCnProfileButton() throws InterruptedException {
        clickOnElement(UserProfilePage.ACCOUNT_PROFILE);
        Thread.sleep(5000);

    }
    @Then("validate information in Profile Side Drawer is correct")
    public void validateInformationInProfileSideDrawerIsCorrect() {
        String actualProfile = getElementText(UserProfilePage.PROFILE_INFORMATION);
        Assert.assertEquals("Profile", actualProfile);

    }
    @Then("click on logout button")
    public void clickCnLogoutButton() {
        getElementText(UserProfilePage.LOGOUT_BUTTON);

    }

}