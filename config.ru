require 'dashing'
require 'figaro'

Figaro.path = File.expand_path "config/application.yml", File.dirname(__FILE__)
Figaro.environment = ENV["RACK_ENV"]
Figaro.load

configure do
  set :auth_token, ENV['AUTH_TOKEN']

  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
