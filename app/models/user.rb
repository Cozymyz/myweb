class User < ApplicationRecord
    validates :signin_name, presence: true, uniqueness: true, length: {in: 4..12}
    validates :display_name, presence: true
    validates :status, inclusion: {in: %w[available suspended]}
    has_secure_password
end
