#Deck Of Cards

### Card for Poker

A simple object with two characteristics: suite and rank

Since there are many cards, and in order to play poker, the Card knows at the class level which are the valid suites and ranks.

The suite and rank can be input independently of case, and for numerical ranks it addmits numbers.

### The Deck of Cards

Is a container object that holds the 52 cards of a poker deck.

It does nothing especial but to create a set of cards attending to all the possible combinations between suites and ranks.

It holds a reference to each card in an array.

### Tests

Instead of Minitest and rake I have used RSpec so I keep exploring the available matchers.

### Best Practices

I have run Rubocop and modified the code accordingly.

