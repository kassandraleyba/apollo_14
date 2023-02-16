class Astronaut < ApplicationRecord
  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions

  validates_presence_of :name, :age, :job, presesnce: true
  def self.average_age
    average(:age).to_f
  end
end

