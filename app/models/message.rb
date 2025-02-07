class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true
    scope :custom_display, -> { order(:created_at).last(5) }
    # Ex:- scope :active, -> {where(:active => true)}
end
