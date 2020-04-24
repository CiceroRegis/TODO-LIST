class TodoList < ApplicationRecord
  scope :search, ->(query) { where("title like?", "%#{search}%") }
end
