package greed;

import java.util.List;

import org.junit.Assert;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GreedStep {
	
	Greed greed = new Greed();
	List<Integer> dices;

	@Given("^I roll the dices and get (.*)$")
	public void iThrowTheDicesAndGet(List<Integer> dices) throws Throwable {
		this.dices = dices;
	}
	
	@When("^I save the dices (.*)$")
	public void iSaveTheDices(List<Integer> dices) throws Throwable {
	    greed.savePoints(dices);
	}
	
	@When("^I save all my dices$")
	public void iSaveAllMyDices() throws Throwable {
	    greed.savePoints(dices);
	}
	
	@Then("^I should get (\\d+) points$")
	public void iGetPoints(int points) throws Throwable {
	    Assert.assertEquals(points, greed.points);
	}
	
	@Then("^My turn should end$")
	public void myTurnEnds() throws Throwable {
	    Assert.assertFalse(greed.canReplay);
	}

	@Then("^I could be able to replay$")
	public void iCanReplay() throws Throwable {
		Assert.assertTrue(greed.canReplay);
	}
}
