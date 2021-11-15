class User < ActiveRecord::Base
   belongs_to :avatar
   belongs_to :level
   
  end