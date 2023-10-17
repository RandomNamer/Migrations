# Full Migration

see [this](https://github.com/MMMZZZZ/Jellyfin-Migrator) script to get migrated with full metadata and user databases, from Windows to Docker on Linux. Basically it edits the databases with file path replacements and date modifications. The script is well-documented and works just fine. Or you can write a cleaner one with all the db informations in the script.

# Only migrate files

According to [Jellyfin Doc](https://jellyfin.org/docs/general/administration/migrate/), the database has to be tempered after migrating the files to another location. It's like a migration on the same system, but we only want the database from the result.

It seems everything of the metadata and watch history is in data/library.db, described by atrociously large tables.
