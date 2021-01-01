class Pet < ApplicationRecord
    validates :name, presence: true
    validates :spacies,presence: true, inclusion: {in: %w[dog cat ferret parrot snake]}
end
