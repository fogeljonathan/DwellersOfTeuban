module DwellersOfTeuban
import Gtk, Test, Plots
include("mapstructures.jl")
export
    PathNode,
    StructureNode,
    TileNode

include("player.jl")
export
    Player

end # module