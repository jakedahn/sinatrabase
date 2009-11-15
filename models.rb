class ItemName < ActiveRecord::Base
  has_many :things  
end

class Thing < ActiveRecord::Base
  belongs_to :itemName
end
