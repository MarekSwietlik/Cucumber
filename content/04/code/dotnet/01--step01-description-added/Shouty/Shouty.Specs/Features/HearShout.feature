Feature: Hear shout

Shouty allows users to "hear" other users "shouts" as long as they are close enough to each other.

To do:
- only shout to people within a certain distance

Scenario: Listener is within range
	Given Lucy is 15 metres from Sean
	When Sean shouts "free bagels at Sean's"
	Then Lucy should hear Sean's message

Scenario: Listener hears a different message
	Given Lucy is 15 metres from Sean
	When Sean shouts "Free coffee!"
	Then Lucy should hear Sean's message
