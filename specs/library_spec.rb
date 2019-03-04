# Tests from B exercise
require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class/library')

class TestLibrary < MiniTest::Test

  def setup
    @books = [{
      title: "The Silent Patient",
      rental_details: {
        student_name: "Lucas",
        date: "20/12/18"
      }
      },
    {
      title: "The Lost Girls of Paris",
      rental_details: {
        student_name: "James",
        date: "17/04/19"
      }
      },
    {
      title: "Feeding you Lives",
      rental_details: {
        student_name: "Mary",
        date: "03/11/18"
      }
      }]
  end

  def test_get_books
    library = Library.new(@books[2])
    assert_equal("Feeding you Lives", library.books[:title])
  end

  def test_get_book_by_title
    library = Library.new(@books)
    book = library.get_book_by_title("The Silent Patient")
    assert_equal("The Silent Patient", book[:title])
  end
  def test_get_book_rental_detail
    library = Library.new(@books)
    book = library.get_book_rental_detail("The Silent Patient")
    assert_equal(book[:date], "20/12/18" )
  end

  def test_add_book_by_title
    library = Library.new(@books)
    book = library.add_book_by_title("The Lord of the Rings")
    assert_equal(4, book.count())
  end

  def test_change_rental_details
    library = Library.new(@books)
    book = library.change_rental_detail("The Lord of the Rings", "Jeft", "30/08/19")
    rental_details_new_book = {
        student_name: "Jeft",
        date: "30/08/19"
      }
    assert_equal(rental_details_new_book, book)
  end
end
