class Bibliography < ApplicationRecord
    validates :reference_type, presence: true
    validates :title, presence: true
    validates :year_published, numericality: { only_integer: true}, allow_nil: true
    validates :pages, numericality: { only_integer: true }, allow_nil: true
    validates :number_of_volumes, numericality: { only_integer: true }, allow_nil: true
end
