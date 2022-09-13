class UserInformation < ApplicationRecord
  default_scope { order(created_at: :desc)}
 
  validates :cpf, :email, uniqueness: true, presence: true
  validates :name, :date, presence: true
  

end
