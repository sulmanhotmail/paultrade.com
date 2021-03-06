class Photo < ActiveRecord::Base
  belongs_to :post
  has_attached_file :image,
                    :styles => {
                        :thumb => "480x270#"}
  validates_presence_of :post_id
  validates_attachment_content_type :image,
                                    content_type:  /^image\/(png|gif|jpeg)/,
                                    message: "Only images allowed"
  validates :image, attachment_presence: true
end
