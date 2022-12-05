class Like < ApplicationRecord
  belongs_to :client
  belongs_to :lesson

  validates :client_id, uniqueness: {scope: :lesson_id}
end
