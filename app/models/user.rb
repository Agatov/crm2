class User < ActiveRecord::Base
  belongs_to :account
  has_many :comments
  has_many :leads

  as_enum :role, admin: 0, manager: 1
end
