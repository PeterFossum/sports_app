class Team < ApplicationRecord

  validates :name, presence: true, length: { maximum: 50 }
  validates :abbr, presence: true
  validates :conference, presence: true
  validates :division, presence: true
end
