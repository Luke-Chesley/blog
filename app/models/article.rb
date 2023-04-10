class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 5 }
    attr_accessor :image_url, :string
  end
  