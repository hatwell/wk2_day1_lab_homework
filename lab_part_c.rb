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

  def title_returns_rental_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def update_rental_details(book_title, student, due_date)
    for book in @books
      if book[:title] == book_title
        book[:rental_details][:student_name] = student
        book[:rental_details][:due_date] = due_date
        return book[:rental_details]
      end
    end
  end

  def add_new_book_with_title(title)
    @books.push({
      title: title,
      rental_details: {
        student_name: "",
        due_date: ""
        }
      })
      return @books.last
  end

end

puts Library.instance_variables

# my_lib = Library.new([{author: "Caroline", title: "A great book"}, {author: "Harry", title: "Music is Good"}])
