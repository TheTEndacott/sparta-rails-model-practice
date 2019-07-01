class Book < ApplicationRecord
  belongs_to :author

  def book_title
    "#{title}"
  end
end
