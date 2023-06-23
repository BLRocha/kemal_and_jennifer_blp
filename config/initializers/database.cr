require "jennifer"
require "jennifer_sqlite3_adapter"
require "colorize"

APP_ENV = ENV["APP_ENV"]? || "development"

Jennifer::Config.configure do |conf|
    if APP_ENV == "development"
        conf.read("config/database.sqlite.yml", :development)
        conf.logger.level = :debug
    else
        conf.read("config/database.yml", :development)
        conf.logger.level = :error
    end
end
