class Level < ActiveRecord::Base
    has_many :users
    has_many :questions 
    has_many :monsters
   end