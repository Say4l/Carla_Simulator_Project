import carla
# Connect to the CARLA server ( ensure it is running )
client = carla . Client (’localhost ’, 2000)
client . set_timeout (10.0) # Timeout in seconds
# Get access to the simulation world
world = client . get_world ()
print (" Connected to world :", world . get_map () . name )