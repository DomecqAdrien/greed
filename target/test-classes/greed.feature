Feature: greed

  Scenario: roll of six dices no points
    Given I roll the dices and get 2,2,3,3,4,6
		When I save all my dices
		Then I should get 0 points
		And My turn should end
		
	Scenario: roll of three dices no points
    Given I roll the dices and get 1,2,3
		When I save all my dices
		Then I should get 0 points
		And My turn should end
		
	Scenario: roll of four dices four twos
    Given I roll the dices and get 4,4,4,4
		When I save all my dices
		Then I should get 800 points
		And I could be able to replay
		
	Scenario: roll of four dices four fives
    Given I roll the dices and get 5,5,5,5
		When I save all my dices
		Then I should get 1000 points
		And I could be able to replay
		
	Scenario: roll of five dices five five
    Given I roll the dices and get 5,5,5,5,5
		When I save all my dices
		Then I should get 2000 points
		And I could be able to replay
	
	Scenario: roll of six dices five five and reroll another 5
    Given I roll the dices and get 5,5,5,5,5,6
		When I save the dices 5,5,5,5,5
		And I roll the dices and get 5
		When I save all my dices
		Then I should get 2050 points
		And I could be able to replay
		
	Scenario: roll of six dices five five reroll to a  5
    Given I roll the dices and get 5,5,5,5,5,6
		When I save the dices 5,5,5,5,5
		And I roll the dices and get 2
		When I save all my dices
		Then I should get 0 points
		And My turn should end

  Scenario: single five
    Given I roll the dices and get 5,2,2,3,3,4
		When I save the dices 5
		Then I should get 50 points
		And I could be able to replay
		
	Scenario: single one
		Given I roll the dices and get 1,2,2,3,3,4
		When I save the dices 1
		Then I should get 100 points
		And I could be able to replay
	
	Scenario: A one and a five
		Given I roll the dices and get 1,5,2,3,3,4
		When I save the dices 1,5
		Then I should get 150 points
		And I could be able to replay
	
	Scenario: three one
		Given I roll the dices and get 1,1,1,2,3,4
		When I save the dices 1,1,1
		Then I should get 1000 points
		And I could be able to replay
	
	Scenario: Three one and Three two
		Given I roll the dices and get 1,1,1,2,2,2
		When I save the dices 1,1,1
		And I save the dices 2,2,2
		Then I should get 1200 points
		And I could be able to replay
		
	Scenario: Four one
		Given I roll the dices and get 1,1,1,1,2,2
		When I save the dices 1,1,1,1
		Then I should get 2000 points
		And I could be able to replay
	
	Scenario: Five one
		Given I roll the dices and get 1,1,1,1,1,2
		When I save the dices 1,1,1,1,1
		Then I should get 4000 points
		And I could be able to replay
	
	Scenario: Six one
		Given I roll the dices and get 1,1,1,1,1,1
		When I save all my dices
		Then I should get 8000 points
		And I could be able to replay
	
	Scenario: three pairs
		Given I roll the dices and get 1,1,2,2,3,3
		When I save all my dices
		Then I should get 800 points
		And I could be able to replay
	
	Scenario: Straight
		Given I roll the dices and get 1,2,3,4,5,6
		When I save all my dices
		Then I should get 1200 points
		And I could be able to replay
		
	Scenario: Straight dice mixed
		Given I roll the dices and get 1,3,4,2,5,6
		When I save all my dices
		Then I should get 1200 points
		And I could be able to replay
		
	Scenario: three one and good reroll
		Given I roll the dices and get 1,1,1,2,2,3
		When I save the dices 1,1,1
		And I roll the dices and get 1,1,1
		When I save the dices 1,1,1
		Then I should get 2000 points
		And I could be able to replay
		
	Scenario: three one and bad reroll
		Given I roll the dices and get 1,1,1,2,2,3
		When I save the dices 1,1,1
		And I roll the dices and get 2,2,3
		When I save the dices 2,2,3
		Then I should get 0 points
		And My turn should end
		
	Scenario: You Only Live Once
		Given I roll the dices and get 1,1,1,2,2,3
		When I save the dices 1,1,1
		And I roll the dices and get 2,2,3
		When I save the dices 2,2,3
		Then I should get 0 points
		And My turn should end
		
		