# app

A boilerplate for api creation with Crystal-lang, [Kemal web framework](https://github.com/kemalcr/kemal) and [jennifer orm](https://github.com/imdrasil/jennifer.cr).

## Installation

[clone repo](https://github.com/BLRocha/kemal_and_jennifer_blp.git)

```sh
git clone https://github.com/BLRocha/kemal_and_jennifer_blp.git
cd kemal_and_jennifer_blp
```

## dependencies
```yml
dependencies:
  kemal:
    github: kemalcr/kemal
  sqlite3:
    github: crystal-lang/crystal-sqlite3
    version: "0.18.0"
  jennifer_sqlite3_adapter:
    github: imdrasil/jennifer_sqlite3_adapter
    version: "~> 0.4.0"
  jennifer:
    github: imdrasil/jennifer.cr
    version: "~> 0.13.0"
  sam:
    github: imdrasil/sam.cr
```
## Usage

1. Go to the config/ folder and check if the databse settings are in accordance with your setup and check that your database drive is in shards.yml
2. Install dependencies.
```bash
shards install
```
3. Models generation is up to you, for help with sam.cr commands.
```bash

crystal sam.cr help
```
1. up the database with the tables and migrates execute: **`crystal sam.cr db:setup`**.

## Contributors

- [Leandro Rocha](https://github.com/BLRocha) - creator and maintainer
