"""
    Describes a spot on a given board on which a road can possibly be built. 

    Stores data on whether or not a player is occupying it, and, if so, who.

    Defaults to an empty node.
"""
mutable struct PathNode
    owner #inits as nothing -- CURRENTLY NOT RESTRICTED TO PLAYER TYPING FOR EMPTY INIT PURPOSES
end
PathNode() = PathNode(nothing)

"""
    Describes a spot on a given board on which a settlement/city exists or can possibly be built. 

    Stores data on whether or not a player is occupying it, and what structure is on it. Stores info on whether or not it is on a port. Also stores info on surrounding pathnodes.

    Defaults to an empty, portless, node.
"""
mutable struct StructureNode
    structuretype #inits as nothing
    owner #inits as nothing -> ::player  -- CURRENTLY NOT RESTRICTED TO PLAYER TYPING FOR EMPTY INIT PURPOSES
    paths::Array{PathNode}
    port::Bool #defaults to false
end
StructureNode() = StructureNode(nothing, nothing, [PathNode(), PathNode(), PathNode()], false)

"""
    Describes a Hexagonal tile on a given board around which settlements/cities/raods exists or can possibly be built. 

    Stores data on whether or not a player is occupying it, and what structure is on it. Stores info on whether or not it is on a port. Also stores info on surrounding pathnodes.

    Defaults to an empty, unblocked, desert, node.
"""
mutable struct TileNode
    resourcetype #inits as nothing
    blocked::Bool #inits as 0
    structures::Array{StructureNode}
end
TileNode() = TileNode("Desert", 0, [StructureNode(), StructureNode(), StructureNode(), StructureNode(), StructureNode(), StructureNode()])