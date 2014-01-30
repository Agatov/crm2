class Landing < ActiveRecord::Base
  belongs_to :account

  has_many :leads
  has_many :statuses
end
