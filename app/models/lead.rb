class Lead < ActiveRecord::Base
  belongs_to :landing
  belongs_to :status
  belongs_to :user

  has_many :comments

  scope :with_status, -> (status_id) { where(status_id: status_id) }


  def add_comment(comment)
    comments.create comment
  end
end
