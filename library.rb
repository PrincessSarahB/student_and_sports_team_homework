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

end
