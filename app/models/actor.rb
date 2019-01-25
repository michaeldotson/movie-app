class Actor < ApplicationRecord
  require 'age_calculator'

  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :birth_date, age: { over: 18 }

end
