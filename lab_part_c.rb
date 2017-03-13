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

  def title_returns_details(title)
    for book in @books
      #In my feedback Zsolt said using a return statement
      #inside a loop like this isnt great but I
      #can't remember what he said to do instead!
      if book[:title] == title
        return book
      end
    end
  end

end

# my_lib = Library.new([{author: "Caroline", title: "A great book"}, {author: "Harry", title: "Music is Good"}])
