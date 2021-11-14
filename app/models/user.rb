class User < ActiveRecord::Base
   belongs_to :avatar
   has_many :levels
   
  end