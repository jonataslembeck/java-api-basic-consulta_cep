package steps;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;

@RunWith(Cucumber.class) 
@CucumberOptions(
		monochrome = true, 
		features = "src/test/resources/features",
		glue = {"classpath:steps"},
		snippets = SnippetType.CAMELCASE)
public class RunCucumberTest {

}
