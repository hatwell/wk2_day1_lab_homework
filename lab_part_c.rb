class Library
  attr_accessor :books
  def initialize(books)
    @books = books
  end

  def print_book_details
    for book in @books
      puts book
    end
  end
end
