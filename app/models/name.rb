class Name < ActiveRecord::Base
  default_scope -> {order("created_at DESC")}
  validates :name, presence: true
end
