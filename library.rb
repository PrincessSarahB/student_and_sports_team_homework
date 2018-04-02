class Library

  def initialize(library)
    @library = library
  end

  def get_books
    return @library
  end

  def get_book_info(book_name)
    for book in @library
      if book_name == book[:title]
        return book
      end
    end
  end

  def get_rental_details(book_name)
    for book in @library
      if book_name == book[:title]
        return book[:rental_details]
      end
    end
  end

  def add_new_book_to_library(new_book)

    @library.push(new_book)

  end

  def change_rental_details(book_name, student_name, date)
    for book in @library
      if book_name == book[:title]
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = date
      end
    end
  end

end
