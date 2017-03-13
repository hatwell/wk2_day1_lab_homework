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
      bossypants_details = @my_library.books[0]
      assert_equal(bossypants_details, @my_library.title_returns_details("Bossypants"))
    end

    def test_title_returns_rental_details
      bossypants_rental_details = {
        student_name: "Caroline Hatwell",
        due_date: "10/04/2017"
      }
      assert_equal(bossypants_rental_details, @my_library.title_returns_rental_details("Bossypants"))
    end

    def test_update_rental_details
      bossypants_new_rental_details = {
        student_name: "Eun-Joo Kim",
        due_date: "08/04/2017"
      }
      assert_equal(bossypants_new_rental_details, @my_library.update_rental_details("Bossypants", "Eun-Joo Kim", "08/04/2017"))
    end

    def test_add_by_title
      new_book = {title: "Great Expectations",
                  rental_details: {
                    student_name: "",
                    due_date: ""
                    }
                  }
      assert_equal(new_book, @my_library.add_new_book_with_title("Great Expectations"))

    end
end
