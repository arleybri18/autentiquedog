class Dog < ApplicationRecord
    has_secure_password validations: false

    validates :name, presence: true
    validates :image, presence: true
    validates  :password, presence: true
end
