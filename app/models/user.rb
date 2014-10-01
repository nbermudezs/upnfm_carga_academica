class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :confirmable

  def password_required?
    # Password is required if it is being set, but not for new records
    if !persisted?
      false
    else
      password || password_confirmation
    end
  end

  def blank_password?
    encrypted_password.blank?
  end

  # provide access to protected method unless_confirmed
  def only_if_unconfirmed
    pending_any_confirmation { yield }
  end
end
