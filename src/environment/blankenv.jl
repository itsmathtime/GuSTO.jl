export BlankEnv

mutable struct BlankEnv <: Environment 
  worldAABBmin::Vector
  worldAABBmax::Vector
  keepin_zones::Vector
  keepout_zones::Vector
  obstacle_set::Vector
end

function BlankEnv()
  worldAABBmin = -1000*ones(3)
  worldAABBmax = 1000*ones(3)
  keepin_zones = Vector{GeometryTypes.GeometryPrimitive}()
  keepout_zones = Vector{GeometryTypes.GeometryPrimitive}()
  obstacle_set = Vector{GeometryTypes.GeometryPrimitive}()
  BlankEnv(worldAABBmin, worldAABBmax, keepin_zones, keepout_zones, obstacle_set)
end
