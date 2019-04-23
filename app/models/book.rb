class Book < ApplicationRecord
  has_one_attached :photo

  private def add_default_car_img
    unless image.attached?
      self.image.attach(io: File.open('app/assets/images/'), filename: 'default_picture.jpg', content_type: 'image/jpg')
    end
  end

end
