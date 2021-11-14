class Level < ActiveRecord::Base
    belongs_to :users
    has_many :questions 
    has_many :monsters
   end