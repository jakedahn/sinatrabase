require 'rubygems'
require 'sinatra'

module AppName
  class App < Sinatra::Default
    set :sessions, false
    set :run, false

    get '/' do
      erb :index
    end

  end
end

