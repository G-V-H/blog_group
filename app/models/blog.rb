class Blog < ApplicationRecord
    belongs_to :user
    has_many :notes, dependent: :destroy
    validates :title, presence: true
    has_one_attached :picture
end
