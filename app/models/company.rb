class Company < ApplicationRecord
    has_many :transactions , dependent: :destroy
end
