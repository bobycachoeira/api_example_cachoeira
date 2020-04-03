require 'httparty'
require 'date'
require 'faker'
require 'json-schema'

ENVIRONMENT = ENV['ENVIRONMENT']

def loadSchema(url)
    file = File.read("./features/schemas/" + url)
    return JSON.generate(file)
end



