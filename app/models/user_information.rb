class UserInformation < ApplicationRecord
  paginates_per 20
  validates :cpf, :email, uniqueness: true, presence: true
  validates :name, :date, presence: true
  
end

