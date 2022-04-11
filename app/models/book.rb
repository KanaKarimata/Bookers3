class Book < ApplicationRecord
  belongs_to :users
  
  has_one_attached :profile_image
  
  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/default-image.jpeg')
      image.attach(io: File.open(file_path), filename: 'default_image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to limit: [width, height]).processed
  end

end
