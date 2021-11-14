class Level < ActiveRecord::Base
    belongs_to :user
    has_many :questions 
    has_many :monsters
   end