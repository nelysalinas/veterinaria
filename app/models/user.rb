class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable, :recoverable, :registerable
  
  enum role: { secretario: 0, logistica: 1, profesional: 2, administrador: 3 }
end
