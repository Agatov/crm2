class User < ActiveRecord::Base
  belongs_to :account
  has_many :comments
  has_many :leads
end
