class User < ActiveRecord::Base
  # for Devise the top ones require extra changes in the devise_user migration before migrate
  # Include default devise modules. Others available are:
  devise :confirmable, :lockable, :timeoutable, :omniauthable,
         :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable
end
