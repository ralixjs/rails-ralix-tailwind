class ActionText::Record < ActiveRecord::Base
  def self.ransackable_attributes(auth_object = nil)
    ["body"]
  end
end
