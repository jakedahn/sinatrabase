require 'rubygems'
require 'sinatra'

namespace 'db' do
  desc "Create db schema"
  task :create do        
    require 'activerecord'
    require 'config/config.rb'
  
    ActiveRecord::Migration.create_table :itemName do |t|
      t.string :itemName
      
      t.timestamps
    end
    ActiveRecord::Migration.create_table :things do |t|
      t.string :thingName
      
      t.timestamps
    end
    
  end  
end