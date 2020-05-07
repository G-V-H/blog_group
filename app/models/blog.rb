class Blog < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :notes, dependent: :destroy
    validates :title, presence: true
end
