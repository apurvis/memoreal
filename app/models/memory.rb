class Memory < ActiveRecord::Base
  has_one :previous_memory, :class_name => "Memory", :foreign_key => "previous_memory_id"
  has_one :visitor

  attr_accessible :description
end
