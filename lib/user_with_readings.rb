class User < ActiveRecord::Base
  has_many :readings
end