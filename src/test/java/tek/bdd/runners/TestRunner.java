package tek.bdd.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:features/setupTest.features", // directory for all feature files
        glue = "tek.bdd.pages",// package for all the steps,
        tags = "@Smoke",
        dryRun = false,
        monochrome = true,
        snippets = CucumberOptions.SnippetType.CAMELCASE,
        plugin = {
                "html:target/cucumber-report/report.html",
                "pretty",
        }
)
public class TestRunner {
}



