require "./config/initializers/database"
require "sam"
require "./src/models/*"
require "./db/migrations/*"

load_dependencies "jennifer"

Sam.help
