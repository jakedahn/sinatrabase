require 'rubygems'
require 'sinatra'
require 'active_record'
require 'sass'

load 'config/config.rb'
load 'models.rb'
load 'methods.rb'

module AppName
  class App < Sinatra::Base
    set :sessions, true
    set :run, false

    before do
      @flash = get_flash.nil? ? "" : "<span class='flash'>#{get_flash}</span>"  
    end

    get '/style.css' do
      content_type 'text/css'
      sass :style
    end

    get '/' do
      haml :index
    end

  end
end