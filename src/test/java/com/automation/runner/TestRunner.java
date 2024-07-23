package com.automation.runner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "com.automation.steps",
        plugin ={"html:src/test/resources/reports/report.html","json:src/test/resources/reports/cucumber.json"}
)
public class TestRunner {

}
