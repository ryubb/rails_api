class Todo < ApplicationRecord
  validates :title, presence: true, length: { in: 1..50 }
  validates :content, length: { maximum: 400 }
  validates :label, length: { maximum: 10 }
end
