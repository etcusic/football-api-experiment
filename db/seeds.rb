Generating Resources:

rails g resource Quarterback name:string
rails g resource Flex type:string #=> create empty tables for :tight_ends, :running_backs, :wide_receicers
rails g resource Defense name:string
rails g resource Kicker name:string
rails g resource Team #=> has many different types of players? - alias different types of players as 'player'
rails g model Note title:string 
rails g model Card #=> ??? to attach a player to

--no-test-framework

Inheritance Structure:
- Player Tables:
    - Quarterback
    - Flex => RB, WR, TE single table inheritance
    - Defense
    - Kicker
- Models: Player parent table
    - QB < Player
    - Flex < Player
        - RB < Flex
        - WR < Flex
        - TE < Flex
    - Defense < Player
    - Kicker < Player
- Controllers: Player parent Controller
    - QB < PlayersController
    - RB < PlayersController
    - WR < PlayersController
    - TE < PlayersController
    - Defense < PlayersController
    - Kicker < PlayersController
