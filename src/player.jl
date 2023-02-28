"""
    Player()

    Player(Resources::Dict, DevelopmentCards::Dict, Inventory::Dict, Points::Int64)

    Mutable Struct describing an actor in the scenario.

    Defaults to empty Resources, Devs, Extras, and Points, and full Inventory.
"""
mutable struct Player
    Resources::Dict # Resources => counts
    DevelopmentCards::Dict # DevelopmentTypes => counts
    Inventory::Dict # Item => NumberRemaining
    Extras::Dict #lr=>Bool, la=>Bool
    Points::Int64 # Current Number of Points
    #TODO: Currently no distinction between manual player and bot player in typing= probably best to implement into decisionmaking instead of here though...
end
Player() = Player(
    Dict("Wood"=>0, "Brick"=>0, "Sheep"=>0, "Wheat"=>0, "Ore"=>0), #Nothing in hand
    Dict("Knight"=>0, "Year_Of_Plenty"=>0, "Road_Building"=>0, "Monopoly"=>0, "Victory_Point"=>0),  #Nothing in hand
    Dict("Road"=>15, "Settlement"=>5, "City"=>4),  #All resources remain
    Dict("Longest_Road"=>false, "Largest_Army"=>false),
    0 #No points
)
