# Migration

see [this](https://github.com/MMMZZZZ/Jellyfin-Migrator) script to get migrated with full metadata and user databases, from Windows to Docker on Linux. Basically it edits the databases with file path replacements and date modifications. The script is well-documented and works just fine. Or you can write a cleaner one with all the db informations in the script.

## Known-issues for `Jellyfin-Migrator`
- ISO string issue; python `Path` issue: Small bugs, debug python script, find and deal with it.
- `path_replacements`: Need to include all config paths, for example, `/config/root`
- The script is migrating from `source_root` to `original_root` by default, `target_root` is untouched.

## Only migrate file mounting points on same installation

According to [Jellyfin Doc](https://jellyfin.org/docs/general/administration/migrate/), the database has to be tempered after migrating the files to another location. It's like a migration on the same system, but we only want the database from the result.

It seems everything of the metadata and watch history is in data/library.db, described by atrociously large tables.

# Setup guides

## HWA transcoding
- Make sure the user is accessible to transcodig devices

## Fonts in container
- `docker exec -it ID bash` to install fonts， like `sudo apt install ttf-wyb-microhei` or `sudo apt install fonts-noto`
- `docker commit  ID NAME` to make your branch of Jellyfin image, with installed packages
- recreate container using new image

## Library Settings
- Enable nfo saver to allow `ChineseSubFinder` to dicover your files
- 
