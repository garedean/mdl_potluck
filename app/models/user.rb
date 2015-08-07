class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :cart

  def formatted_time_signin
    return self.last_sign_in_at.in_time_zone("Pacific Time (US & Canada)").strftime("%A, %B %d %I:%M %p")
  end

end
