class User < ActiveRecord::Base
  has_one :list
  has_many :tasks, through: :list 
end