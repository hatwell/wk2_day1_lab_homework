require('minitest/autorun')
require('minitest/rg')
require_relative('./lab_part_c')

class LibraryTest < MiniTest::Test
  def setup
    @my_books = [
      {
        title: "Bossypants",
        author: "Tina Fey",
        rental_details: {
          student_name: "Caroline Hatwell",
          due_date: "10/04/2017"
        }
      },
      {
        title: "The Pragmatic Programmer",
        author: "Andy Hunt",
        rental_details: {
          student_name: "Dominic Fraser",
          due_date: "14/04/2017"
        }
      },
      {
      title: "Information Architecture",
      author: "O'Reilly",
      rental_details: {
        student_name: "Tristan Grey",
        due_date: "05/01/2017"
      }
    }
    ]
    @my_library = Library.new(@my_books)
  end

  def test_print_book_details
    assert_equal(@my_books, @my_library.print_book_details)
  end

  def test_title_returns_details
    
  end
end
