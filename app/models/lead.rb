class Lead < ActiveRecord::Base
  belongs_to :landing
  belongs_to :status
  belongs_to :user

  has_many :comments
end
