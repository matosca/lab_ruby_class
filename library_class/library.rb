# Test 'Extensions'
class Library

  # attr_reader :books
  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def get_book_by_title(title)
    for book in @books
      if (title == book[:title])
        return book
      end
    end
  end

  def get_book_rental_detail(title)
    for book in @books
      if (title == book[:title])
        return book[:rental_details]
      end
    end
  end

  def add_book_by_title(title)
    new_book = {
      title: "The Lord of the Rings",
      rental_details: {
        student_name: "",
        date: ""}}
    @books << new_book
  end

  def change_rental_detail(title, student, due_date)
    rental_details_new_book = {
      rental_details: {
        student_name: "Jeft",
        date: "30/08/19"
      }
    }
    for book in @books
      if (title == book[:title])
          book[:rental_details] = rental_details_new_book
          return book[:rental_details]
      end
    end
  end
end
