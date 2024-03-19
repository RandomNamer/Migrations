# Containers

> Synology's custom Docker is basically a disasterous piece of software.

## Failed to start container

1. `failed to initialize logging driver: database is locked`
   - Syno's custom log driver db is locked, and the solution is simple: DELETE it. The log db is basically useless since history logs are not worth checking and loading these log entries is painful on HDDs.
   - run `docker inspect --format='{{.LogPath}}' container_name` to get db location
  
