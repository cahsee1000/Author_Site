class Book < ApplicationRecord
  has_one_attached :photo


  before_create :add_default_book_img, on: [:create, :update]

  private def add_default_book_img
    unless photo.attached?
      self.photo.attach(io: File.open('app/assets/images/default/default-picture.jpg'), filename: 'default-picture.jpg', content_type: 'image/jpg')
    end
  end

end
