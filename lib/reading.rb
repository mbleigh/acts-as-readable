class Reading < ActiveRecord::Base
  belongs_to :user
  belongs_to :readable, :polymorphic => true
  
  validates_presence_of :user_id, :readable_id, :readable_type
  validates_uniqueness_of :user_id, :scope => [:readable_id, :readable_type]
end